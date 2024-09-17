// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Moneybox{
    uint256 public balance;
    address private owner;
    receive() external payable{
        balance+= msg.value;
    }

    constructor() {
        owner = msg.sender;
    }

    function withdraw(uint amount,address payable walletAddress) public{
        require(msg.sender == owner, "Only Owner allowed");
        require(amount <=balance,"Could not withdraw more than the available balance");

        walletAddress.transfer(amount);
        
    } 

}