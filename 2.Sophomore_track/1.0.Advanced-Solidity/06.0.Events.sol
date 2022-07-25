// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
// Events allow contracts to perform logging on the ethereum blockchain
// Logs for a given contract can be parsed later to perform updates on 
// on the frontend interface, for example. They are commonly used to
// allow frontend interfaes to liste for specific events and update
// the user itnerface, or used as a cheap
// form of storage.

// define the contract using contratc function
contract Events {
    // Declare an event which logs an address and a string
    event TestCalled(address sender, string message);

    function test() public {
        // Log an event
        emit TestCalled(msg.sender, "Someone called test()!");
    }
}