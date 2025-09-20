# Requirements
**Jering.Javascript.NodeJS (C# nuget package), NodeJS, ArweaveJS** were required for submitting data with Arweave.

It's possible to calculate **data root** with C# but RSA-PSS and deephash was unable to replicate in C#. 

## Optimum security
Requires replicating RSA-PSS signing and Arweave’s deephash in C#, with secure memory handling **(sodium_memzero,sodium_malloc, sodium_free, sodium_mprotect_*)** from **libsodium**.

This ensures private key material never resides in managed memory or swap partitions.

## Current implementation
C# can clear key material strings after use, but NodeJS (via ArweaveJS) does not natively expose libsodium’s secure memory APIs.

Achieving equivalent secure memory handling in NodeJS would require **ffi-napi + ref-napi** and a **compiled libsodium** build, which may be excessive for many use cases.

## Zero-trust options
Keys can be loaded dynamically at runtime via a secure web API while avoiding loading keys via browser(recommended).

Alternatively, keys can be embedded in code, though this introduces reverse-engineering risks.
