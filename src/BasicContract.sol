// SPDX-License-Identifier : MIT

pragma solidity ^0.8.18;


contract BasicContract {
    uint256 public my_fav_num;
    address public owner;

    constructor () {
        owner = msg.sender;
    }

    function increment() public {
        require(msg.sender == owner);
        my_fav_num++;
    }

    function decrement() public {
        require(msg.sender == owner);
        my_fav_num--;
    }

}