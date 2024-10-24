# Decentralized To-Do List DApp

## Overview

This project is a decentralized To-Do List application built on the Ethereum blockchain using Solidity. Users can create and manage their tasks in a transparent and secure environment, leveraging the benefits of blockchain technology.

## Features

- **Create Tasks**: Users can add new tasks with details such as content, author, and timestamp.
- **View Tasks**: Retrieve details of individual tasks by their unique ID.
- **Mark Tasks as Done**: Update the status of a task to indicate completion.

## Technologies Used

- **Solidity**: Smart contract programming language used for writing the To-Do List contract.
- **Ethereum**: Blockchain platform for deploying and executing the smart contract.
- **Truffle**: Development framework for Ethereum that simplifies the deployment and testing of smart contracts.

## Getting Started

### Prerequisites

- Node.js (version 12 or higher)
- Truffle (installed globally)
- Ganache or an Ethereum test network

### Installation

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd Dapp-todo
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

3. Compile the smart contracts:
   ```bash
   truffle compile
   ```

4. Deploy the contracts to a local blockchain (Ganache):
   ```bash
   truffle migrate
   ```

### Running the Application

- To interact with the deployed contract, you can create a frontend using HTML/CSS/JavaScript or use Truffle Console for testing purposes:
  ```bash
  truffle console
  ```

### Usage

- Create a new task:
  ```javascript
  await contractInstance.createTask("My first task", "YourName");
  ```

- Get task details:
  ```javascript
  const task = await contractInstance.getTask(0);
  console.log(task);
  ```
