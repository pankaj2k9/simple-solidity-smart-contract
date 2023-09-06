// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract Storage {

    // State variable to store an integer value
    uint256 private storedValue;

    // Event to log when the stored value is updated
    event ValueUpdated(uint256 newValue);

     // Constructor to initialize the contract with an initial value
    constructor(uint256 initialValue) {
        storedValue = initialValue;
    }

    // Function to get the current stored value
    function getValue() public view returns (uint256) {
        return storedValue;
    }

    // Function to set a new value
    function setValue(uint256 newValue) public {
        storedValue = newValue;
        emit ValueUpdated(newValue); // Emit an event when the value is updated
    }
}