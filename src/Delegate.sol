
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Delegate {
   uint256 public number;
    
    address callee;

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }
}
