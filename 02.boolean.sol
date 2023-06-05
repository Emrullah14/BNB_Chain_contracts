// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract Booleans {
    bool public isOwner = true;

    function getVar() public view returns(bool) {
        return isOwner;
    }

    // Setting a new value to the `isOnwer` variable
    // We don't need to put 'returns' at the end of the
    // function because there is no returning data
    function setVar(bool newValue) public {
        isOwner = newValue;
    }
}