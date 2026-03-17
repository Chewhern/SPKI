# Version 0.0.0-Alpha
- Made private PKI infrastructure by mimicking CA hierachical model.
- Strictly use mutable data types for secure memory handling.
- Created and used light self-made software HSM concept on the server side.
- MITM can be prevented if out of band communication was used as portrayed in Signal messenger/WhatsApp messenger security number.
- Separating signing + trust operations with encryption or cryptographic operations.
- All authentication operations on nodes level relies on public key authentication.
- All authentication operations from user to node also relies on public key authentication.

## Drawbacks/Limitations
- Manual updating and rotating keys were required on the server side when involving with authorized users' private keys.
- Signed records for authorized users and end users will be removed automatically once the expiry date reached.
- DateTime parsing is an issue and needs time to fix.
- Cryptographic key commitment issues and logging data changed without permission are two issues that can't be solved as of now.
- The software HSM concept was not perfect **(will describe in version 0.0.1).**
- While chain of trust exists, getting full chain of trusts have yet to develop for middle level authorized users and end users. 

# Version 0.0.1-Alpha
Same as version 0.0.0 but added feature of basic software based HSM + KMS which includes **authentication,authorization and accounting**.

Client side will be responsible for choosing what are the secret keys will be uploaded to the server side.

The clients will only be able to use this new feature when their public keys get signed by this infrastructure's top and mid level authorized users.
## Drawbacks/Limitations
Same datetime parsing issue.

In Windows, MacOS and Linux (possibly can extend to Android/IOS), it'll always be a good idea to do what we can to avoid swapping sensitive data to disk.
Hence, libsodium's **mlock** must be used. It had certain limitations or difficulties when using that function. The best bet is to use **malloc** from libsodium
that had **mlock** being applied to the pointer it returned. It solves the swapping issues. Just that using pointer needs to add more functions/enhance the existing
**ASodium** C# library I created by enabling them to accept pointer data type instead of current byte[] data type. 

# Version 0.0.2-alpha
Server side code **(Not including LSHSM server side application)** have now disabled **swap partitions** for cryptographic sensitive data for **libsodium supported cryptographic features**. 

# Version 0.0.1-beta
SPKIML_* and SPKITL_* had been integrated with Arweave via **SimplifiedArweaveSDK**

DateTime no longer use String representations, it now uses integer representations.

**There're no updates on SHSM application as of now..**

SPKI from this version and onwards officially became **A Byzantine-Resilient Federated PKI with hardened software cryptographic handling**. 
