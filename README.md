📝 Smart Contract: ReportCard
This smart contract, written in Solidity, allows for the management and storage of academic report cards (grade records) on the blockchain. It is designed to ensure that only the contract owner can add or query records, guaranteeing data integrity and privacy.

🔑 Key Features:
Record Registration:

Allows the contract owner to register report cards with the following information:

Record number.

Course code.

Degree program.

Subject.

Class.

Academic period.

Grades.

Record Querying:

The owner can query registered records using the record number as an identifier.

Access Control:

Only the contract owner can add or query records, thanks to the onlyOwner modifier.

Events:

Emits events to notify when the contract is created and when a new record is registered.

🛠️ Contract Structure:
Struct Actas:

Stores the information for each record, including the number, code, degree program, subject, class, period, and grades.

Mapping Act:

Associates a record number (uint) with its corresponding Actas structure.

Modifier onlyOwner:

Restricts certain functions so that only the contract owner can execute them.

🚀 Contract Usage:
Deployment:

The contract is deployed on the blockchain, and the creator automatically becomes the owner.

Register a Record:

The owner can register a new record by calling the setActa function and providing the required details.

Query a Record:

The owner can query an existing record by calling the getActa function and providing the record number.

📌 Notes:
This contract is designed to be deployed on a Solidity-compatible blockchain (such as Ethereum).

Record information is stored on the blockchain, ensuring immutability and transparency.
