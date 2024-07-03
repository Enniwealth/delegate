// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract ContractA {
    uint256 public number;
    
    address callee;

    constructor(address _callee){
        callee = _callee;
    }

    fallback() external {
        uint256 newNumber = 12;
        (bool success, bytes memory data) = callee.delegatecall(
            abi.encodeWithSignature("setNumber(uint256)", newNumber)
        );
        require(success, "call failed");
        
    }
}


