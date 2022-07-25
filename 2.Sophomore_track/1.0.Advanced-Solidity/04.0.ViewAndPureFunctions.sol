// SPX-License-Identifier: MIT
pragma solidity ^0.8.10;

// 'view' and 'pure' are special keywords which indicate specific behaviour
// for the function

// Getter functions (those which return values) can be declared either 'view or 'pure'
// - 'view': fucntions which do not change any state variables
// - 'Pure'" Fucntions which do not change any state values, but do also
// do not read any state values

// define the contract using contratc function
contract ViewAndPure {
    // Declare a state variable
    uint public x = 1;

    //Promise not to modify the state (but can read state)
    function addToX(uint y) public view returns (uint) {
        return x + y;
    }

    //Promise not to modify or read from state
    // pure as in can be used in any contract without having to refer
    // to any state variable in order to perfrom its getter operation
    function add(uint i, uint j) public pure returns (uint) {
        return i + j;
    }
}