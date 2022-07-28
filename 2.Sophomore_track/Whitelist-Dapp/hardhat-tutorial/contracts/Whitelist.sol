// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

// contatc address of first hardhat deployment: 
// Whitelist Contract Address Rinkeby: 0x126b7e6ff9F78Dc50d4Dd05dBAD671b63fBB6eb4
// Goerli deployment: 0x58839907F9C3ebf6F5BAB61d35328CC982b230cD in prep for merge

// Import this file to use console.log
import "hardhat/console.sol";

contract Whitelist {

    // Max number of whitelisted addresses allowed
    uint8 public maxWhitelistedAddresses;

    // A mapping of whitelistedAddresses
    // if an address is whitelisted we would set it to true, if it is false by default
    // for all other addresses
    mapping(address => bool) public whitelistedAddresses;

    //numAddressesWhitelisted would be used to keep track of how many addresses have been
    // DO NOT CHANGE THIS VARIABLE NAME AS IT WILL BE PART OF VERIFICATION
    uint8 public numAddressesWhitelisted;

    // Setting the Max number of whitelisted addresses
    // User will put the value at the time of deployment
    constructor(uint8 _maxWhitelistedAddresses) {
        maxWhitelistedAddresses = _maxWhitelistedAddresses;
    }

    /**
    addAddressToWhiteList - This function adds the address of the sender to the
    whitelist
     */   

    function addAddressToWhitelist() public {
        // check if the user has already been whitelisted
        require(!whitelistedAddresses[msg.sender], "Sender has already been whitelisted");
        // check if the numAddressesWhitelisted < maxWhitelistedAddresses,
        // if not then throw an error.
        require(numAddressesWhitelisted < maxWhitelistedAddresses, "More addresses cannot be added, limit reached");
        // Add the address whih called the function to the whitelistedAddresses array
        whitelistedAddresses[msg.sender] = true;
        // Increase the number of whitelisted addresses
        numAddressesWhitelisted += 1;
    }

}
