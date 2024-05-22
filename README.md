# Repositorio de Proyecto a Auditar
## URL
https://github.com/richpob/SolidityCodeVulnerables/e

# Auditoria de Vulnerabilidades de Smart Contract
## 1. VulnerableDAO.sol
Sūrya's Description Report

### Files Description Table


|  File Name  |  SHA-1 Hash  |
|-------------|--------------|
| /home/ubuntu/Documents/GitHub/SolidityCodeVulnerables/contracts/VulnerableDAO.sol | 975f89d4016386368f2c9437bdaf33d64d3831a9 |


### Contracts Description Table


|  Contract  |         Type        |       Bases      |                  |                 |
|:----------:|:-------------------:|:----------------:|:----------------:|:---------------:|
|     └      |  **Function Name**  |  **Visibility**  |  **Mutability**  |  **Modifiers**  |
||||||
| **VulnerableDAO** | Implementation |  |||
| └ | <Constructor> | Public ❗️ | 🛑  |NO❗️ |
| └ | updateConfig | External ❗️ | 🛑  | isAuthorized |
| └ | castVote | External ❗️ | 🛑  |NO❗️ |
| └ | newDispute | External ❗️ | 🛑  | isAuthorized |
| └ | endDispute | External ❗️ | 🛑  |NO❗️ |
| └ | checkLottery | External ❗️ | 🛑  |NO❗️ |
| └ | lotteryNFT | Internal 🔒 | 🛑  | |
| └ | query_dispute | Public ❗️ |   |NO❗️ |


### Legend

|  Symbol  |  Meaning  |
|:--------:|-----------|
|    🛑    | Function can modify state |
|    💵    | Function is payable |

### Gráfico de Interacciones y objetos
![image](https://github.com/richpob/SolidityCodeVulnerables/assets/133718913/a36a5afb-51f7-4f38-87b5-50c32c23ec00)
![image](https://github.com/richpob/SolidityCodeVulnerables/assets/133718913/64f9c971-ce08-4976-98d4-0ee3ad689928)

### Slither Print Resumen

INFO:Printers:
Compiled with solc
Total number of contracts in source files: 1
Source lines of code (SLOC) in source files: 60
Number of  assembly lines: 0
Number of optimization issues: 0
Number of informational issues: 3
Number of low issues: 1
Number of medium issues: 0
Number of high issues: 1

+---------------+-------------+------+------------+--------------+----------+
| Name          | # functions | ERCS | ERC20 info | Complex code | Features |
+---------------+-------------+------+------------+--------------+----------+
| VulnerableDAO |           8 |      |            |           No |          |
+---------------+-------------+------+------------+--------------+----------+
INFO:Slither:VulnerableDAO.sol analyzed (1 contracts)

![image](https://github.com/richpob/SolidityCodeVulnerables/assets/133718913/f77c5376-241a-4ac5-8b4c-ca100744e9b7)


## 2. VulnerableVault.sol

Sūrya's Description Report

### Files Description Table


|  File Name  |  SHA-1 Hash  |
|-------------|--------------|
| /home/ubuntu/Documents/GitHub/SolidityCodeVulnerables/contracts/VulnerableVault.sol | 860d8a12dfc75e223e5b9fb789cf133ea8175bf1 |


 Contracts Description Table


|  Contract  |         Type        |       Bases      |                  |                 |
|:----------:|:-------------------:|:----------------:|:----------------:|:---------------:|
|     └      |  **Function Name**  |  **Visibility**  |  **Mutability**  |  **Modifiers**  |
||||||
| **VulnerableVault** | Implementation |  |||
| └ | <Constructor> | Public ❗️ | 🛑  |NO❗️ |
| └ | doStake | External ❗️ |  💵 |NO❗️ |
| └ | doUnstake | External ❗️ | 🛑  | enoughStaked |
| └ | claimRewards | External ❗️ | 🛑  |NO❗️ |
| └ | vaultBalance | Public ❗️ |   |NO❗️ |
| └ | userBalance | Public ❗️ |   |NO❗️ |


 Legend

|  Symbol  |  Meaning  |
|:--------:|-----------|
|    🛑    | Function can modify state |
|    💵    | Function is payable |

### Gráfico de Interacciones y objetos
![image](https://github.com/richpob/SolidityCodeVulnerables/assets/133718913/6850c0d1-74d9-4454-8453-44e13c46e589)

![image](https://github.com/richpob/SolidityCodeVulnerables/assets/133718913/376c6329-89e7-4d9e-9b9f-cf2f7e6a4c19)


## 3. VulnerableBank.sol

### Sūrya's Description Report

 Files Description Table


|  File Name  |  SHA-1 Hash  |
|-------------|--------------|
| /home/ubuntu/Documents/GitHub/SolidityCodeVulnerables/contracts/VulnerableBank.sol | 60274c904a17c82c374f4027460e20f61282fa21 |


 Contracts Description Table


|  Contract  |         Type        |       Bases      |                  |                 |
|:----------:|:-------------------:|:----------------:|:----------------:|:---------------:|
|     └      |  **Function Name**  |  **Visibility**  |  **Mutability**  |  **Modifiers**  |
||||||
| **VulnerableBank** | Implementation |  |||
| └ | <Constructor> | Public ❗️ | 🛑  |NO❗️ |
| └ | updateConfig | External ❗️ | 🛑  | onlyOwner |
| └ | doInvest | External ❗️ | 🛑  |NO❗️ |
| └ | distributeBenefits | External ❗️ | 🛑  | returnRewards |
| └ | doDistribute | Internal 🔒 | 🛑  | |


 Legend

|  Symbol  |  Meaning  |
|:--------:|-----------|
|    🛑    | Function can modify state |
|    💵    | Function is payable |

### Gráfico de Interacciones y objetos
![image](https://github.com/richpob/SolidityCodeVulnerables/assets/133718913/aa4cd8d4-1e27-48d3-97dd-b4652e6f58b9)
![image](https://github.com/richpob/SolidityCodeVulnerables/assets/133718913/08698fef-7591-44f9-a358-4679450de6de)

### Slither Report

INFO:Printers:
Compiled with solc
Total number of contracts in source files: 1
Source lines of code (SLOC) in source files: 48
Number of  assembly lines: 0
Number of optimization issues: 1
Number of informational issues: 6
Number of low issues: 3
Number of medium issues: 0
Number of high issues: 1

+----------------+-------------+------+------------+--------------+----------+
| Name           | # functions | ERCS | ERC20 info | Complex code | Features |
+----------------+-------------+------+------------+--------------+----------+
| VulnerableBank |           5 |      |            |           No | Send ETH |
+----------------+-------------+------+------------+--------------+----------+
INFO:Slither:VulnerableBank.sol analyzed (1 contracts)
![image](https://github.com/richpob/SolidityCodeVulnerables/assets/133718913/fbdb7590-d468-4936-ad84-f697ae168eb9)



## 4. VulnerableShop.sol

### Sūrya's Description Report

#### Files Description Table

|  File Name  |  SHA-1 Hash  |
|-------------|--------------|
| /home/ubuntu/Documents/GitHub/SolidityCodeVulnerables/contracts/VulnerableShop.sol | a77ab440ea096133b4ef8f6902d7550d2a252bfd |

#### Contracts Description Table


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


#### Legend

|  Symbol  |  Meaning  |
|:--------:|-----------|
|    🛑    | Function can modify state |
|    💵    | Function is payable |

### Gráfico de Interacciones y objetos

![image](https://github.com/richpob/SolidityCodeVulnerables/assets/133718913/418fde38-efd7-4385-a88b-d497f6ce4ffe)
![image](https://github.com/richpob/SolidityCodeVulnerables/assets/133718913/af48395e-88ef-43bf-80da-2388d6437ba3)




