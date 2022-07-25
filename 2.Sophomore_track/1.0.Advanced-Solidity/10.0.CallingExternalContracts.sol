// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

// Calling External Contracts

// Contracts can call other contracts by just calling functions on an 
// instance of the other contract like A.foo(x, y, z). To do so, you 
// must have an interface for A which tells your contract which 
// functions exist. Interfaces in Solidity behave like header files, 
// and serve similar purposes to the ABI we have been using when 
// calling contracts from the frontend. This allows a contract to 
// know how to encode and decode function arguments and return values 
// for calling external contracts.

//  Interfaces you use do not need to be extensive. i.e. they 
// do not need to necessarily contain all the functions that exist 
// in the external contract - only those which you might be calling 
// at some point.

// Assume there is an external ERC20 contract, and we are interested
// in calling the balanceOf function to check the balance of a given 
// address from our contract.

interface MinimalERC20 {
    // Just include the functions we are interested in
    // in the interface
    function balanceOf(address account) external view returns (uint256);
}

contract MyContract {
    MinimalERC20 externalContract;

    constructor(address _externalContract) {
        // Initialize a MinimalERC20 contract instance
        externalContract = MinimalERC20(_externalContract);
    }

    function mustHaveSomeBalance() public {
        //Require that the caller of this transaction has a non-zero
        // balance of tokens in the external ERC20 contract
        uint balance = externalContract.balanceOf(msg.sender);
        require(balance > 0, "You don't own any tokens of external contract");
    }
}