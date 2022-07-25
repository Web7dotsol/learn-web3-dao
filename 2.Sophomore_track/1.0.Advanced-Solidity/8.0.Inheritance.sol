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
contract A {
   