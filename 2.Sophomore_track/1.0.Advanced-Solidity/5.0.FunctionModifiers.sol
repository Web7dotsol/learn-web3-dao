// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
// Modifiers are code that can be run before and/or after a function call.
// They are commonly used for restricting access to certain functions,
// validating input parameters, protecting against certain types
//  of attacks etc.

// define the contract using contratc function
contract FunctionModifiers {
  address public owner;

  constructor() {
      // Set the contract deployer as the owner of the contract
      owner = msg.sender;
  }

  //Create a modifier tha only allows a fucntion to be called by the owner;
  modifier onlyOwner() {
    require(msg.sender == owner, "You are not the owner");

    //Underscore is a special character used inside modifiers
    //Which tells Solidity to execute the function the modifier is used on
    // at this point
    // Therefore, this modifier will first perform the above check
    // Then run the rest of the code
    _;
  }

 // Create a function and apply the onlyOwner modifier on it
 function changeOwner(address _newowner) public onlyOwner {
     // We will only reach this point if the modifer succeeds with its checks
     // So the caller of this transaction must be the current owener
     owner = _newowner;
 }
}