// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract ProxyContract {
    uint256 public number;
    
    address callee;

    constructor(address _callee){
        callee = _callee;
    }

    fallback() external {
        
        (bool success, bytes memory data) = callee.delegatecall(msg.data);
        require(success, "call failed");
        
    }
}


