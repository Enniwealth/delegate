// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Delegate} from "../src/Delegate.sol";
import {ProxyContract} from "../src/ProxyContract.sol";


contract CounterTest is Test {
    ProxyContract proxyContract;
    Delegate delegate;
    
    function setUp() public {
        delegate = new Delegate();
        proxyContract = new ProxyContract(address(delegate));
        
    }

    function test_Increment() public {

        Delegate newdeladr = Delegate(address(proxyContract));
        newdeladr.setNumber(12);

        assertEq(proxyContract.number(), 12);
    }
}

