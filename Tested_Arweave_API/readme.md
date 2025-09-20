# Requirements
**Jering.Javascript.NodeJS (C# nuget package), NodeJS, ArweaveJS** were required for submitting data with Arweave.

It's possible to calculate **data root** with C# but RSA-PSS and deephash was unable to replicate in C#. 

## Optimum security
Optimum security can only be achieved when RSA-PSS and deephash able to be replicated in C# due to memory safety and swap partition concerns.

The memory safety and swap partition security functions involved from **libsodium** include **sodium_memzero,sodium_malloc,sodium_free,sodium_mprotect_noaccess,sodium_mprotect_readonly,sodium_mprotect_readwrite**. 

If full zero trust was to be enforced, the Arweave's private key can be loaded dynamically in runtime via secure web API. It's better to avoid loading via browser
and website based application if it's possible. 

If one would want middle ground, Arweave's private key can be hardcoded into the C# code snippet but this means it's prone to reverse engineering.

## Current security
C# side can try to clear the RSA-PSS private key string.

If NodeJS/ArweaveJS side would want to achieve the same cryptographic security like C#, the development might be overkill at least for me.

It needs to involve both community made libraries **ffi-napi, ref-napi** and then pair it with **compiled libsodium** library just to use the stated functions
to try and clear the RSA-PSS private key string in NodeJS side. This is because of a special reason. Libsodium primarily deal with pointers. While pointers can somehow interchange with Byte[] or UInt_8[], in this particular case, it must be raw and unmanaged pointer pointed to an unmanaged memory address as the Byte[] or UInt_8[] is managed pointer point to managed memory address. If it's not in private key string (immutable data type as each key material of RSA will get convert from respective Base64URL string into Byte[], the latter can be cleared by libsodium's nodejs wrapper but the first can't), such a workaround is not required. 

Another additional factor to factor in, it includes the use of **sodium-native** or the same setting above just to clear all RSA-PSS private key separate and respective information in memory securely immediately after use within **ArweaveJS**.

If just using it as it's, only half of zero trust can be accomplished. 
