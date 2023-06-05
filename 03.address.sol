// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract Address {
    address private owner = msg.sender;
    // Setting `owner` variable to msg.sender
    // address variable type is a special type
    // for just storing address data in solidity

    function getOwner() public view returns(address) {
        return owner;
    }
}