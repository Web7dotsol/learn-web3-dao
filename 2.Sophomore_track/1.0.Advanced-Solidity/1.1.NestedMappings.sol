// SPDX-License-Identifier: MITpragma solidity ^0.8.10;

// we can also create nested mappings, where the 'key' points to a second nested mapping
// To do this, we set the 'valueType' to a mapping itself

// define the contract using contratc function
contract NestedMappings {
    // string variable to store mood
   mapping(address => mapping(uint => bool)) public nestedMapp;

   function get(address _addr1, uint i) public view returns (bool) {
    // You can get values from a nested mapping
    // even when it is not initialized
    // The default value for bool type is false
    // Read operation
    return nestedMapp[_addr1][_i];
    }

    function set(
        address _addr1,
        uint _i,
        bool _boo
    ) public {
        nestedMapp[_addr1][_uint _i] = _boo;
    }

    function remove(address _addr1, uint _i) public {
        delete nestedMapp[_addr1][_i];
    }
}