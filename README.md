# Error Handling Smart Contract

## Overview
This smart contract demonstrates the usage of require(), assert(), and revert() statements for error handling in Solidity. It includes two functions: `setValue()` to set a value and `withdraw()` to perform a withdrawal, both showcasing different error handling mechanisms.

## Contract Details
- **Contract Name**: ErrorHandlingContract
- **Solidity Version**: ^0.8.0
- **License**: MIT

## Functionality
The contract provides the following functionality:

### 1. setValue()
This function sets a new value for the contract's state variable `value`. It incorporates `require()`, `assert()`, and normal state variable assignment.

- **Parameters**: 
    - `_newValue`: The new value to set.
- **Modifiers**:
    - `external`: Indicates that the function can be called from outside the contract.
- **Error Handling**:
    - `require()`: Ensures that the `_newValue` is not zero.
    - `assert()`: Verifies that setting the `_newValue` won't cause an overflow.
- **Usage**:
    ```solidity
    function setValue(uint256 _newValue) external
    ```

### 2. withdraw()
This function allows withdrawing funds from the contract by subtracting the specified amount from the `value`. It uses `revert()` to handle insufficient balance scenarios.

- **Parameters**: 
    - `_amount`: The amount to withdraw.
- **Modifiers**:
    - `external`: Indicates that the function can be called from outside the contract.
- **Error Handling**:
    - `revert()`: Reverts the transaction if the withdrawal amount exceeds the balance.
- **Usage**:
    ```solidity
    function withdraw(uint256 _amount) external
    ```

## Usage
To use this smart contract, follow these steps:
1. Deploy the contract to a compatible Ethereum network.
2. Interact with the contract using a tool like Remix IDE, MetaMask, or Truffle.
3. Call the `setValue()` function to set a new value.
4. Call the `withdraw()` function to withdraw funds.

## License
This project is licensed under the terms of the MIT license.
