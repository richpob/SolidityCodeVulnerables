# Auditoria de Vulnerabilidades de Smart Contract
 Sūrya's Description Report

 Files Description Table


|  File Name  |  SHA-1 Hash  |
|-------------|--------------|
| /home/ubuntu/Documents/GitHub/SolidityCodeVulnerables/contracts/VulnerableShop.sol | a77ab440ea096133b4ef8f6902d7550d2a252bfd |


 Contracts Description Table


|  Contract  |         Type        |       Bases      |                  |                 |
|:----------:|:-------------------:|:----------------:|:----------------:|:---------------:|
|     └      |  **Function Name**  |  **Visibility**  |  **Mutability**  |  **Modifiers**  |
||||||
| **VulnerableShop** | Implementation | Ownable |||
| └ | <Constructor> | Public ❗️ | 🛑  |NO❗️ |
| └ | doBuy | External ❗️ |  💵 |NO❗️ |
| └ | newSale | External ❗️ | 🛑  |NO❗️ |
| └ | disputeSale | External ❗️ | 🛑  |NO❗️ |
| └ | reimburse | External ❗️ | 🛑  | onlyOwner |
| └ | itemReceived | External ❗️ | 🛑  |NO❗️ |
| └ | removeMaliciousSale | External ❗️ | 🛑  | onlyOwner |
| └ | deleteSale | Public ❗️ | 🛑  |NO❗️ |
| └ | query_dispute | Public ❗️ |   |NO❗️ |


 Legend

|  Symbol  |  Meaning  |
|:--------:|-----------|
|    🛑    | Function can modify state |
|    💵    | Function is payable |
