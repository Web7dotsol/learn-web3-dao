// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
// Inheritance is the procedure by which one contract inherit the
// the attributes and methods of another contract. SOlidity supports
//  multiple inheritance. Contracts can inherit other contract by
// by using the 'is' keyword
// 
// A parent contract which has a function that can be overridden
// by a child contract must be declared as a 'virtual function'.
// 
// A child contract that is going to override a parent function
// must use the 'override' keyword.
// The order of inheritance matters if parent contracts share methods
// or attributes by the same name

/* Graph of inheritance
    A
   / \
  B   C
 / \ /
F  D,E

*/
contract A {
    function foo() public pure virtual returns (string memory) {
        return "A";
    }
}

// Contract B inherit other contracts y using the keyword 'is'
contract B is A {
    // Override A.foo()
    // But also allow this function to be overridden by further children
    // S0 we specify both keywords - virtual and override
    function foo() public pure virtual override returns (string memory){
        return "B";
    }
}

contract C is A {
    // Similar to contract B above
    function foo() public pure virtual override returns (string memory) {
        return "C";
    }
}

// Contracts can inherit from multiple parent contracts.
// When a function is called that is defined mutlple times in
// different contracts, parent contracts are searched from
// right to left, and in depth-first manner

contract D is B, C {
    // D.foo() returns "B"
    // since B is the right most parent contract with function foo()
    function foo() public pure override(B, C) returns (string memory) {
        return super.foo();
    }
}

contract E is C, B {
    // E.foo() returns "B
    // since B is the right most parent contract with function foo()
    function foo() public pure override(C, B) returns (string memory) {
        return super.foo();
    }

// Inheritance must be ordered from "most base-like" to "most derived"
// Swapping the order of A and B will throw a compilation error.
// contract F is A, B {
//    function foo() public pure override(A, B) returns (string memory) {
//        return super.foo();
//    }
}

   