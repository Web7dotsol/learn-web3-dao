// SPDX-License-Identifier: MIT
// pragma statement specifying compiler version
pragma solidity ^0.8.0;

// import ERC20 standard from OZ. OZ library is filled with compliant solidity projects
// no need to create own one. Just extend the functionality throw imports
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

// create instance of ERC20 using the is keyword similar to new class instantiations
// contract address: 0x9854E4db5C3AfEeA9Daa9cfC8C3ff525Cd84Ed87
contract LW3Token is ERC20 {
    // constructor has two parameters to specify token name and symbol
    // constructor funtion can only be called once
    // we do no wnat the name of the token and symbol to be change after deploying 
    // the contract
    //
    constructor(string memory _name, string memory _symbol) ERC20(_name, _symbol) {
        // the _mint function is from the ERC20 standard which is called by the 
        // contract deployer (msg.sender) and it also takes in the number of the
        // the tokens to be minted
        // EVM does not support floating numbers so to get deciamls it use wei
        // 1 Eth = 10**18 wei . Wei is what cents is to dollars.
        _mint(msg.sender, 10 * 10 ** 18);
    }
}