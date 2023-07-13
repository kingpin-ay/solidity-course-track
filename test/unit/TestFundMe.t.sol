// SPDX-License-Identifier : MIT

pragma solidity ^0.8.18;

import {Test , console} from "forge-std/Test.sol";
import {FundMe} from '../../src/FundMe.sol';
import {DeployFundMe} from '../../script/DeployFundMe.s.sol';

contract TestFundMe is Test{
    FundMe fundme;
    address USER = makeAddr("Ayush");
    uint256 constant AMOUNT = 0.1 ether;
    uint256 constant STARTING_AMOUNT = 10 ether;

    function setUp() public  {
        DeployFundMe deployFundMe = new DeployFundMe();
        fundme = deployFundMe.run();
        vm.deal(USER , STARTING_AMOUNT);
    }

    function testGetVersion() public {
        uint256 version = fundme.getVersion();
        assertEq(version , 4);
    }
    function testUserFund() public {
        vm.prank(USER);
        fundme.fund{value: AMOUNT}();

        uint256 var_amount = fundme.getUserSendedMoney(USER);
        assertEq(var_amount , AMOUNT);
    }

    modifier funded (){
        vm.prank(USER);
        fundme.fund{value: AMOUNT}();
        _;
    }

    function testWithDrawOnlyWithOwner() public funded {
        vm.expectRevert();
        vm.prank(USER);
        fundme.withdraw();
    }


    function testWithdrawASingleFunder() public funded{
        //ARRANGE
        uint256 startingOwnerBalance = fundme.getOwner().balance;
        uint256 startingContractBalance = address(fundme).balance;
        
        
        //ACT
        vm.prank(fundme.getOwner());
        fundme.withdraw();
        
        
        //ASSERT
        uint256 endingOwnerBalance = fundme.getOwner().balance;
        uint256 endingContractBalance = address(fundme).balance;

        assertEq(endingContractBalance, 0);
        assertEq(endingOwnerBalance , startingOwnerBalance+startingContractBalance);

    }
    
    function testWithdrawASingleFunderCheaper() public funded{
        //ARRANGE
        uint256 startingOwnerBalance = fundme.getOwner().balance;
        uint256 startingContractBalance = address(fundme).balance;
        
        
        //ACT
        vm.prank(fundme.getOwner());
        fundme.cheaperWithdraw();
        
        
        //ASSERT
        uint256 endingOwnerBalance = fundme.getOwner().balance;
        uint256 endingContractBalance = address(fundme).balance;

        assertEq(endingContractBalance, 0);
        assertEq(endingOwnerBalance , startingOwnerBalance+startingContractBalance);

    }   
}