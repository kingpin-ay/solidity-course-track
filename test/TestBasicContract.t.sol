// SPDX-License-Identifier : MIT

pragma solidity ^0.8.18;

import {Test } from 'forge-std/Test.sol';
import {BasicContract} from '../src/BasicContract.sol';

contract TestBasicContract is Test{    
    BasicContract basicContract;

    function setUp() public{
        basicContract = new BasicContract();
    }

    function testIncrement() public {
        basicContract.increment();
        basicContract.increment();

        assertEq(basicContract.my_fav_num() , 2);
    }
    function testDecrement() public {
        basicContract.increment();
        basicContract.increment();
        basicContract.decrement();
        

        assertEq(basicContract.my_fav_num() , 1);
    }

    function testOwnerCheck() public {
        assertEq(basicContract.owner() , address(this));
    }
    
}