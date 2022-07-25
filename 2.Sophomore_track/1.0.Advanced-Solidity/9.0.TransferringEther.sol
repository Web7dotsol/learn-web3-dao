// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

// Transferring ETH:

// There are three ways to transfer ETH from a contract to some other address. 
// However, two of them are no longer recommended methods by Solidity in latest
// versions, therefore we shall skip those.
// Currently, the recommended way to transfer ETH from a contract is to use the
// call function. The call function returns a bool indicating success or failure 
// of the transfer. 

// How to receive Ether in a regular Ethereum account address:

// If transferring ETH to a regular account (like a Metamask address), you do 
// not need to do anything special as all such accounts can automatically accept 
// ETH transfers. 

// How to receive Ether in a contract: 

// However, if you are writing 
// a contract that you want to be able to receive ETH transfers directly, 
// you must have at least one of the functions below

// receive() external payable
// fallback() external payable

// receive() is called if msg.data is an empty value, and fallback() is used otherwise.

// msg.data is a way to specify arbitrary data along with a transaction. You will usually not be using it manually.

// define the contract using contratc function
contract ReceivedEther {
        /*
    Which function is called, fallback() or receive()?

           send Ether
               |
         msg.data is empty?
              / \
            yes  no
            /     \
receive() exists?  fallback()
         /   \
        yes   no
        /      \
    receive()   fallback()
    */

    // Function to receive Ether. msg.data must be empty.
    receive() external payable {}

    // Fallback function is called when msg.data is not empty
    fallback() external payable {}

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}

contract SendEther {
    function sendEth(address payable _to) public payable {
        // Just forward the ETH received in this payable function
        // to the given address
        uint amountToSend = msg.value;
        // call returns a bool value specifying success or failure
        (bool success, bytes memory data) = _to.call{value: msg.value}("");
        require(success == true, "Failed to send ETH");
    }
}