// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
// Solidity Libraries

// Libraries are similar to contracts in Solidity, with a few limitations. 
// Libraries cannot contain any state variables, and cannot transfer ETH.

// Typically, libraries are used to add helper functions to your contracts. 
// An extremely commonly used library in Solidity world is SafeMath - which 
// ensures that mathematical operations do not cause an integer underflow 
// or overflow.
contract SafeMath {
 function add(uint x, uint y) internal pure returns (uint) {
    uint z = x + y;
    // if z overflowed, throw an error
    require(z >= x, "uint overflow");
    return z;
 }

 contract TestSafeMath {
    function testAdd(uint x, uint y) public pure returns (uint) {
        return SafeMath.add(x, y);
    }
}