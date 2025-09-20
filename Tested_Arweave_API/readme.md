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
To be verified.. 
