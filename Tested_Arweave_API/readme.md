# Requirements
**Jering.Javascript.NodeJS (C# nuget package), NodeJS, ArweaveJS** were required for submitting data with Arweave.

It's possible to calculate **data root** with C# but RSA-PSS and deephash was unable to replicate in C#. 

## Optimum security
Requires replicating RSA-PSS signing and Arweave’s deephash in C#, with secure memory handling **(sodium_memzero,sodium_malloc, sodium_free, sodium_mprotect_*)** from **libsodium**.

This ensures private key material never resides in managed memory or swap partitions.

## Current implementation
C# can clear key material strings after use, but NodeJS (via ArweaveJS) can't.

The C# code snippets below can show the issue why NodeJS can't really achieve what C# is able to. 

```
//SodiumGuardedHeapAllocation's dll library from libsodium as closest one can get to C
//IntPtr = C language's pointer (it can exist in many format)
//A notable example from libsodium "void sodium_memzero(void * const pnt, const size_t len)"
//It can also exist in the form of "void *sodium_malloc(size_t size)"
using System;
using System.Runtime.InteropServices;

namespace ASodium
{
    public static partial class SodiumGuardedHeapAllocationLibrary
    {
        #if IOS
            const string DllName = "__Internal";
        #else
        const string DllName = "libsodium";
        #endif

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        internal static extern IntPtr sodium_malloc(long Size);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        internal static extern IntPtr sodium_allocarray(long ArrayLength,long ArrayElementSizeInBytes);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        internal static extern void sodium_free(IntPtr intPtr);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        internal static extern int sodium_mprotect_noaccess(IntPtr intPtr);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        internal static extern int sodium_mprotect_readonly(IntPtr intPtr);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        internal static extern int sodium_mprotect_readwrite(IntPtr intPtr);
    }
}

//----------------
//sample use of unmanaged pointer
﻿using System;

namespace ASodium
{
    public static class SodiumGuardedHeapAllocation
    {
        public static IntPtr Sodium_Malloc(ref Boolean IsZero,long Size) 
        {
            IntPtr intPtr = SodiumGuardedHeapAllocationLibrary.sodium_malloc(Size);
            if (intPtr == IntPtr.Zero) 
            {
                IsZero = true;
            }
            else 
            {
                IsZero = false;
            }
            return intPtr;
        }

        public static IntPtr Sodium_AllocArray(ref Boolean IsZero, long ArrayLength, long ArrayElementSizeInBytes) 
        {
            ulong ArrayLengthULong = ulong.Parse(ArrayLength.ToString());
            ulong ArrayElementSizeInBytesULong = ulong.Parse(ArrayElementSizeInBytes.ToString());

            if (ArrayLength >0) 
            {
                if (ArrayElementSizeInBytesULong >= (ulong.MaxValue / ArrayLengthULong))
                {
                    throw new ArgumentException("Error: The array elements size you want to initialize in bytes is not acceptable. The maximum array elements size in bytes that you can initialize was "+ (ulong.MaxValue / ArrayLengthULong).ToString());
                }
            }
            
            if(ArrayLength<0 || ArrayElementSizeInBytes < 0) 
            {
                throw new ArgumentException("Error: ArrayLength or ArrayElementsSizeInBytes shouldn't be a negative value.");
            }

            IntPtr intPtr = SodiumGuardedHeapAllocationLibrary.sodium_allocarray(ArrayLength, ArrayElementSizeInBytes);
            if (intPtr == IntPtr.Zero)
            {
                IsZero = true;
            }
            else
            {
                IsZero = false;
            }
            return intPtr;
        }

        public static void Sodium_Free(IntPtr intPtr) 
        {
            SodiumGuardedHeapAllocationLibrary.sodium_free(intPtr);
        }

        public static void Sodium_MProtect_NoAccess(IntPtr intPtr) 
        {
            int Status = 0;
            Status= SodiumGuardedHeapAllocationLibrary.sodium_mprotect_noaccess(intPtr);
            if (Status == -1) 
            {
                throw new Exception("Error: This pointer is already in no access state.");
            }
        }

        public static void Sodium_MProtect_ReadOnly(IntPtr intPtr)
        {
            int Status = 0;
            Status = SodiumGuardedHeapAllocationLibrary.sodium_mprotect_readonly(intPtr);
            if (Status == -1)
            {
                throw new Exception("Error: This pointer is already in read only state.");
            }
        }

        public static void Sodium_MProtect_ReadWrite(IntPtr intPtr)
        {
            int Status = 0;
            Status = SodiumGuardedHeapAllocationLibrary.sodium_mprotect_readwrite(intPtr);
            if (Status == -1)
            {
                throw new Exception("Error: This pointer is already in read write state.");
            }
        }
    }
}

//-------------------------
//The actual problem lies below
﻿using System;
using System.Runtime.InteropServices;

namespace ASodium
{
    public static partial class SodiumSecureMemoryLibrary
    {
        #if IOS
            const string DllName = "__Internal";
        #else
            const string DllName = "libsodium";
        #endif

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        internal static extern void sodium_memzero(IntPtr Destination, long Length);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        internal static extern int sodium_mlock(IntPtr Destination, long Length);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        internal static extern int sodium_munlock(IntPtr Destination, long Length);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        internal static extern void sodium_memzero(Byte[] Destination, long Length);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        internal static extern int sodium_mlock(Byte[] Destination, long Length);

        [DllImport(DllName, CallingConvention = CallingConvention.Cdecl)]
        internal static extern int sodium_munlock(Byte[] Destination, long Length);
    }
}

//-------------
﻿using System;
using System.Runtime.InteropServices;
using System.Text;

namespace ASodium
{
    public static class SodiumSecureMemory
    {
        public static void MemZero(IntPtr intPtr, long Length)
        {
            SodiumSecureMemoryLibrary.sodium_memzero(intPtr, Length);
        }

        public static void MemZero(Byte[] Source, long Length)
        {
            SodiumSecureMemoryLibrary.sodium_memzero(Source, Length);
        }

        public static void MemLock(IntPtr intPtr, long Length)
        {
            int TestInt;
            TestInt = SodiumSecureMemoryLibrary.sodium_mlock(intPtr, Length);
            if (TestInt == -1)
            {
                throw new Exception("Exception: Memory requested to lock exceeds the amount of memory that can be locked..");
            }
        }

        public static void MemLock(Byte[] Source, long Length)
        {
            int TestInt;
            TestInt = SodiumSecureMemoryLibrary.sodium_mlock(Source, Length);
            if (TestInt == -1)
            {
                throw new Exception("Exception: Memory requested to lock exceeds the amount of memory that can be locked..");
            }
        }

        public static void MemUnlock(IntPtr intPtr, long Length)
        {
            int TestInt;
            TestInt = SodiumSecureMemoryLibrary.sodium_munlock(intPtr, Length);
            if (TestInt == -1)
            {
                throw new Exception("Exception: Unlock and MemZero process failed..");
            }
        }

        public static void MemUnlock(Byte[] Source, long Length)
        {
            int TestInt;
            TestInt = SodiumSecureMemoryLibrary.sodium_munlock(Source, Length);
            if (TestInt == -1)
            {
                throw new Exception("Exception: Unlock and MemZero process failed..");
            }
        }

        //To prevent segmentation fault, it's advised to
        //not really use GCHandle that often to create
        //an IntPtr object in C#.
        //There's only so many IntPtr objects that can be
        //created by C# before segmentation fault occurs
        //and force stops the program.

        //Due to such reason, locking, unlocking and secure
        //overwrite a memory address with zero is best to 
        //be used with Byte[] which is equivalent to uint8*
        //or unsigned char* in C.

        //==Safe and performance guaranteed==
        public static void SecureClearBytes(Byte[] Source)
        {
            MemZero(Source, Source.LongLength);
        }

        public static void SecureMemoryLockBytes(Byte[] Source)
        {
            MemLock(Source, Source.LongLength);
        }

        public static void SecureMemoryUnlockBytes(Byte[] Source)
        {
            MemUnlock(Source, Source.LongLength);
        }

        //==Safe but there's a risk in the system or program
        //unable to generate IntPtr object via GCHandle
        //or via "static unsafe void Main()" ==
        public static void SecureClearString(String Source)
        {
            Byte[] SourceBytes = Encoding.UTF8.GetBytes(Source);
            GCHandle MyGeneralGCHandle = GCHandle.Alloc(Source, GCHandleType.Pinned);
            MemZero(MyGeneralGCHandle.AddrOfPinnedObject(), SourceBytes.LongLength);
            MyGeneralGCHandle.Free();
            SecureClearBytes(SourceBytes);
        }

        public static void SecureMemoryLockString(String Source)
        {
            Byte[] SourceBytes = Encoding.UTF8.GetBytes(Source);
            GCHandle MyGeneralGCHandle = GCHandle.Alloc(Source, GCHandleType.Pinned);
            MemLock(MyGeneralGCHandle.AddrOfPinnedObject(), SourceBytes.LongLength);
            MyGeneralGCHandle.Free();
            SecureClearBytes(SourceBytes);
        }

        public static void SecureMemoryUnlockString(String Source)
        {
            Byte[] SourceBytes = Encoding.UTF8.GetBytes(Source);
            GCHandle MyGeneralGCHandle = GCHandle.Alloc(Source, GCHandleType.Pinned);
            MemUnlock(MyGeneralGCHandle.AddrOfPinnedObject(), SourceBytes.LongLength);
            MyGeneralGCHandle.Free();
            SecureClearBytes(SourceBytes);
        }

        //Don't really know how to optimize or make the operations on char array
        //more proper.
        public static void SecureClearCharArray(Char[] Source)
        {
            GCHandle MyGeneralGCHandle = GCHandle.Alloc(Source, GCHandleType.Pinned);
            MemZero(MyGeneralGCHandle.AddrOfPinnedObject(), Source.LongLength*2);
            MyGeneralGCHandle.Free();
        }

        public static void SecureMemoryLockCharArray(Char[] Source)
        {
            GCHandle MyGeneralGCHandle = GCHandle.Alloc(Source, GCHandleType.Pinned);
            MemLock(MyGeneralGCHandle.AddrOfPinnedObject(), Source.LongLength*2);
            MyGeneralGCHandle.Free();
        }

        public static void SecureMemoryUnlockCharArray(Char[] Source)
        {
            GCHandle MyGeneralGCHandle = GCHandle.Alloc(Source, GCHandleType.Pinned);
            MemUnlock(MyGeneralGCHandle.AddrOfPinnedObject(), Source.LongLength*2);
            MyGeneralGCHandle.Free();
        }
    }
}
```

The problem actually comes from **SecureClearString** method in C# that can't be replicated in NodeJS. While the best bet in NodeJS is to use **ffi-napi + ref-napi** along with compiled libsodium library, it doesn't apply to NodeJS. Buffer and Uint_8 Array can be used in NodeJS but given the RSA JWT string is one big main string. It needs to be decoded into corresponding JWT data model. In total, there're 9 managed string memory address the developer can't access. JWT JSON string that contains RSA private key is the first string memory address. E, N, D, P, Q, DP, DQ, QI consist of the remaining 8 managed string memory addresses the developer can't access. After converting them from Base64URL, it will be 8 respective UInt_8 Array or Buffer variables. UInt_8 Array or Buffer variables can be cleared in memory. In total, there're 17 memory addresses need to be cleared immediately after use.

Because NodeJS and other interpreted runtimes abstract away low-level memory access, developers cannot directly guarantee secure string clearing in the same way as in C, Rust, or C# (compiled programming languages family). This is a platform design tradeoff rather than a flaw.

Unless somehow the stated requirements magically added by nodejs community or interpreted programming languages as a whole, one can assume when doing a cross environment development, only the compiled programming language part can achieve optimum memory security and cryptographic hygiene. To summarize, cross-environment setups can reach partial zero-trust guarantees — with C# ensuring its own information security measures guarantees and NodeJS handling signing/broadcasting at an acceptable risk level.

## Zero-trust options
Keys can be loaded dynamically at runtime via a secure web API while avoiding loading keys via browser(recommended).

Alternatively, keys can be embedded in code, though this introduces reverse-engineering risks.
