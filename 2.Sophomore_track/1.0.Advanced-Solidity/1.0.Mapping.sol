// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

// Mappings in solidity act like hasmhmaps or dictionaries in other programming
// languages. They are used to store the data in key-value pairs.
// Mappings are created using this syntax: 'mapping (keyType => valueType)'

// define the contract using contratc function
contract Mapping {
    // string variable to store mood
    mapping(address => uint) public myMapp;

    function get(address _addr) public view returns (uint) {
        // Mapping always returns a value
        // If the value was not set, it will return the default value
        //The default value for unit is 0
        return myMapp[_addr];
    } 

    function set(address _addr, uint _i) public {
        // Update the value at this address
        myMapp[_addr] = _i;
    }

    function remove(address _addr) public {
        // Reset value to the default value;
        delete myMapp[_addr];
    }
    }
