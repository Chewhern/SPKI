# Security considerations/安全考量
Since SPKI has evolved from alpha to beta and been integrated with Arweave, its out‑of‑band (offline) trust initialization remains intact.

If offline trust initialization is conducted beforehand, the cryptographic key commitment — or the party’s public keys and associated information — becomes non‑repudiable.

The offline trust initialization process is flexible and has no fixed standard (e.g., Signal messenger’s out‑of‑band verification).

The Arweave integration ensures that once the initial trust is moved into the digital space, it cannot be tampered with. In this way, it mitigates a portion of the online key commitment problem.

In scenarios where MITM is not the primary threat model, SPKI can serve as an alternative PKI for certain use cases.

In most cases, it'll be served as a complementary PKI to existing PKI. 

---
自从 SPKI 从 Alpha 版本演进到 Beta 版本并与 Arweave 集成后，其带外（离线）信任初始化的方式仍然保留。

如果在通信之前已经进行了离线信任初始化，那么相关的密钥承诺——也就是一方的公钥及其关联信息——就具有了不可否认性。

离线信任初始化的过程是灵活的，没有固定的标准（可以参考 Signal/WhatsApp聊天軟件的带外验证方式）。

Arweave 的集成确保了，一旦初始化的信任被迁移到数字空间，就无法被篡改。通过这种方式，它在一定程度上缓解了线上密钥承诺的问题。

在中间人攻击不是主要威胁模型的场景下，SPKI 可以作为某些特定用途下的替代性 PKI 方案。

大多数情况下，它是作为现有 PKI 的一种补充方案来使用的。
