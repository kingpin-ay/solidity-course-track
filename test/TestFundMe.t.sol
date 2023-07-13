// SPDX-License-Identifier : MIT

pragma solidity ^0.8.18;

import {Test , console} from "forge-std/Test.sol";
import {FundMe} from '../src/FundMe.sol';
import {DeployFundMe} from '../script/DeployFundMe.s.sol';

contract TestFundMe is Test{
    FundMe fundme;
    function setUp() public  {
        DeployFundMe deployFundMe = new DeployFundMe();
        fundme = deployFundMe.run();
    }

    function testGetVersion() public {
        uint256 version = fundme.getVersion();
        assertEq(version , 4);
    }
}