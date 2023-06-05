// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;

contract Parent {
    uint public parentData;

    constructor(uint _parentData) {
        parentData = _parentData;
    }
}

contract child is Parent {
    uint public childData;

    // We are declaring `_parentData` of `Parent` contract.
    // The constructor passes _parentData to the Parent constructor using Parent(_parentData) syntax.
    constructor(uint _parentData, uint _childData) Parent(_parentData) {
        childData = _childData;
    }
}