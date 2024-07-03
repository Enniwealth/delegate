// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {ContractB} from "../src/ContractB.sol";
import {ContractA} from "../src/ContractA.sol";


contract CounterTest is Test {
    ContractA contractA;
    ContractB contractB;

    function setUp() public {
        contractB = new ContractB();
        contractA = new ContractA(address(contractB));
        
    }

    function test_Increment() public {

        ContractB newdeladr = ContractB(address(contractA));
        newdeladr.setNumber(2);

        assertEq(contractA.number(), 12);
    }
}

