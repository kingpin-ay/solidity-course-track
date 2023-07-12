// SPDX-License-Identifier : MIT

pragma solidity ^0.8.18;


import {Script} from '../lib/forge-std/src/Script.sol';
import {BasicContract} from '../src/BasicContract.sol';



contract DeployBasicContract is Script{

    function run() external returns (BasicContract){
        vm.startBroadcast();
        BasicContract basicContract = new BasicContract();
        vm.stopBroadcast();
        return basicContract;
    }
}