# Important/重要
Make sure the **README.txt** or **README(CN).txt** were read from **SPKITL** zip files.

This can help to understand some of the requirements that will be used for all the SPKI applications.

確保從**SPKITL**的zip 文件裏的**README.txt** 或 **README(CN).txt**有被讀取和理解。

这有助于理解所有 SPKI 应用将使用的一些要求。

# Sample data/樣本數據
In the server applications, the data's JSON data after decoded from Arweave now had the position of **auth_pk** and **sign_pk** swapped. The **ON** application now had been fixed/updated as this's a small coding/programming mistake on my side.

在服务器端应用中，从 Arweave 解码后的 JSON 数据中，**auth_pk** 和 **sign_pk** 的位置互换了。**ON** 应用已修复/更新，这是我这边的一个小小的编码/编程错误。

# User Manual/用戶手冊
There'll be no user manual for now.

短暫來看會沒有用戶手冊。

# SPKITL Security Assumptions/SPKITL的安全假設
1. Assume x is malicious nodes and y is total amount of nodes. The security can be guaranteed if:
```
Y-X≥2
Y≥3
```
2. Assume X is malicious authorized users and Y is total amount of authorized users within a specified TL node. The security can be guaranteed if:
```
Y-X≥1
Y≥2
```
---
1. 假设 x 代表恶意节点数，y 代表节点总数。若满足以下条件，则安全性可得到保证：
```
Y-X≥2
Y≥3
```
2. 假设 X 代表恶意授权用户数，Y 代表指定 TL 节点内的授权用户总数。若满足以下条件，则安全性可得到保证：
```
Y-X≥1
Y≥2
```

**For the amount of nodes in TL, it will behave in a similar manner like TOR network's nodes. Increasing the amount of nodes won't increase the security it offers/guarantees.**

**TL的节点数量与其运行方式类似与TOR网络用戶所面向的节点数量。增加节点数量并不会提高其安全性。**

# SPKITL Security Rule/SPKITL的Rule
For each of the nodes in TL, the authorized users within each node **must not** sign themselves. The authorized users within each node **must sign only other** TL nodes' authorized users.

在TL中的每个节点中，每个节点内的授权用户**不得**对自己进行签名。每个节点内的授权用户**只能**对其他TL节点的授权用户进行签名。

# SPKIML Information/SPKIML的一些資訊
For each SPKIML node, it needs to get its authorized users signed by any single signed SPKITL nodes' all authorized users. This serves as an extended module similar to that of classic PKI/CA's hierarchical model. The second security assumptions from SPKITL applies to SPKIML.

每个 SPKIML 节点都需要其中一個已被其他SPKITL節點簽名的 SPKITL 节点的已授权用户对其进行签名。这相当于一个扩展模块，类似于经典 PKI/CA 的分层模型。SPKITL 的第二个安全假设也适用于 SPKIML。
