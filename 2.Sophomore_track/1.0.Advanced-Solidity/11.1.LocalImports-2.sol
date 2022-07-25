// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

// Import Statements
// To maintain code readability, you can split your Solidity code over
// multiple files. Solidity allows importing both local and external files.

// Local Imports
// Assume we have a folder structure like this:

// ├── 11.1.LocalImports-2.sol
// └── 11.0.LocalImports-1.sol
// we can import 11.0.LocalImports-1.sol and use it in 11.1.LocalImports-1.sol 
// as such

  // import 11.0.LocalImports-1.sol
  import "./11.0.LocalImports-1.sol";

  contract Import {
    // Initialize 11.0.LocalImports-1.sol
    Foo public foo = new LocalImports1();

    //Test 11.0.LocalImports-1.sol by getting it's name.
    function getFooName() public view returns (string memory) {
        return foo.name();
    }
  }
  
//   Added_Info: When we use Hardhat, we can also install contracts as 
//   node modules through npm, and then import contracts from the node_modules 
//   folder. These also count as local imports, as technically when you install 
//   a package you are downloading the contracts to your local machine.

