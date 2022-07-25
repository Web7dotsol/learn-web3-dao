// SPX-License-Identifier: MIT
pragma solidity ^0.8.10;

// define the contract using contratc function
contract MoodDiary {
    // string variable to store mood
    string public mood;

    // function to set the mood use _mood as a parameter to avoid 
    // variable overshadowing
    function setMood(string memory _mood) public {
        mood = _mood;
    }

    // fucntion to detect the mood from the smart contract
    // view only function that doe sinvoke blockchain changes
    // caller requires no gas fees to execute the fucntion to read data
    function getMood() public view returns(string memory) {
        return mood;
    }
}