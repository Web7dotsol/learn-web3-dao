// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

// // https://github.com/owner/repo/blob/branch/path/to/Contract.sol
// import "https://github.com/owner/repo/blob/branch/path/to/Contract.sol";

// // Example import ERC20.sol from openzeppelin-contract repo
// // https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol
// import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
import https://github.com/Web7dotsol/learn-web3-dao/blob/main/2.Sophomore_track/1.0.Advanced-Solidity/11.0.LocalImports-1.sol;

contract ExternalImports {
      // Initialize 11.0.LocalImports-1.sol
    Foo public foo = new LocalImports1();

    //Test 11.0.LocalImports-1.sol by getting it's name.
    function getFooName() public view returns (string memory) {
        return foo.name();
    }
}