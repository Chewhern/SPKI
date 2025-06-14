# Quantum cryptography
In the fields of cryptography, it's a consensus or rule that people often prefer **battle tested algorithms**. Hence, there's no support for post-quantum cryptography until the year of 2030 or 2032 by latest.
If you do wish for earlier integration, such a modification won't trigger AGPL.

## Symmetric Encryption
Currently, XChaCha20 was used because of the accessibility and slightly more secure compare to AES or block cipher in terms of implementation and side channel prevention. A similar algorithm is XSalsa20.

If you think it's okay to be using AES256GCM or SM4, you are free to do so. Changing the symmetric encryption algorithms inside the source code won't trigger AGPL.

## MAC(Message Authentication Code)
Currently,  the default MAC algorithm is using HMAC-SHA512. If you do wish to change to other MAC algorithm or simply keyed-hashing algorithm like in the case of Blake2B. You're free to do so.
You can also use options such as HMAC-SM3, HMAC-SHA256, Keyed-Keccak, Keyed-SHAKE. Changing the MAC algorithm won't trigger AGPL.

## KDF-Context
Changing the **context** parameter of KDF won't trigger AGPL.

## Digital Signature
The default digital signature algorithms are ED25519 and ED448. If you do want to change to other elliptic curve standards or big integer standards such as RSA or DSA, such changes on algorithms won't trigger AGPL.

## Key Exchange
The default algorithms are X25519 and X448. If you do want to change to other elliptic curve standards or big integer standards such as normal diffie hellman key exchange, such changes on algorithms won't trigger AGPL.

### Seed Source
Currently, all the cryptographic keys were generated with CSPRNG. If you do want to supply with your own seed source such as password, it's completely acceptable. I don't recommend it but if you do
make such changes, it won't trigger AGPL.
