// SPX-License-Identifier: MIT
pragma solidity ^0.8.10;

// Enum stands for enumerable. They are user defined types that contain
// readbale names for a set of contants called members. They are commonly
// used to restrict a variable to only have one of few predefined values. Since
// they are just an abstraction for human readable constants, in actuality,
// they are internally represented as 'uint' s.

// define the contract using contratc function
contract Enum {
   // Enum representing different possible shipping states
   enum States {
    Pending,
    Shipped,
    Accepted,
    Rejected, 
    Canceled
   }


   // Declare a variable of the type Status
   // THis can only contain one of the predefined values
   Status public status;

   // SInce enums are internally represented by unint
   // This function will always return a uint
   // Pending = 0
   // Shipped = 1
   // Accepted = 2
   // Rejected = 3
   // Canceled = 4
   // Value higher than 4 cannot be returned
   function get() public view returns (Status) {
       return status;
   }

   function set(Status _status) public {
    status = _status;
   }

   // Update value to a specific enum members
   function cancel() public {
    status = Status.Canceled; //Will set status = 4 a sper the declared enum
   }
}