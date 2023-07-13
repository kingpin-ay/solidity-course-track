// SPDX-License-Identifier : MIT

pragma solidity ^0.8.18;


import {Test} from "forge-std/Test.sol";
import {FundMe}  from '../../src/FundMe.sol';
import {DeployFundMe} from '../../script/DeployFundMe.s.sol';
import {FundFundMe , WithdrawFundMe} from '../../script/Interactions.s.sol';


contract TestFundMeInteraction is Test{
    FundMe fundme;
    address USER = makeAddr("Ayush");
    uint256 constant AMOUNT = 10 ether;
    uint256 constant STARTING_AMOUNT = 10 ether;

    function setUp() public  {
        DeployFundMe deployFundMe = new DeployFundMe();
        fundme = deployFundMe.run();
        vm.deal(USER , STARTING_AMOUNT);
        vm.deal(address(fundme) , AMOUNT);
    }

    function testUserCanFund() public {
        FundFundMe fundFundMe = new FundFundMe();
        fundFundMe.fundFundme(address(fundme));

        WithdrawFundMe withdrawFundMe = new WithdrawFundMe();
        withdrawFundMe.withdrawFundMe(address(fundme));

        assert(address(fundme).balance == 0);

    }
}