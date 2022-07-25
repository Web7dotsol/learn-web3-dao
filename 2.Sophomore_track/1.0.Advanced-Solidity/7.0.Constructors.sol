// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
// A 'constructor' is an optional function that is executed when the
// contract is first deployed. You can also pass arguments to
// constructors

// define the contract using contratc function
contract TheContructor {
    string public name;

    // You will need to provide a string argument when deploying the contract
    constuctor(string memory _name) {
        // This will be set immediately when the contract is deployed
        name = _name;
    }
}