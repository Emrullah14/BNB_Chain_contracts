// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract ModifierExample {
    address public owner;
    uint public myNumber;

    constructor(uint _myNumber) {
        owner = msg.sender;
        myNumber = _myNumber;
    }

    // Modifier functions are pre-checks for rules of function execution.
    // At the example above, we declared that only the owner of the function or an allowed address can call this
    // But why we didn't write this into the `changeNumber` function?
    // Because we can use many different functions special to owner of the contract.
    // Instead of declaring same logic everytime, we declared it once and can use anytime we need.

    modifier onlyOwnerOrAddress(address _allowedAddress) {
        require(msg.sender == owner || msg.sender == _allowedAddress, "Only the owner or an allowed address can call this function.");
        _;
    }

    // Using the modifier after the function declarations
    function changeNumber(uint _newNumber) public onlyOwnerOrAddress(address(0x456)) {
        myNumber = _newNumber;
    }
}