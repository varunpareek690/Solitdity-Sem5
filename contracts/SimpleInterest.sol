// SPDX-License-Identifier: GPL-3.0-only

pragma solidity ^0.8.0;

contract SimpleInterest{
    uint256 principalAmount;
    uint256 rate;
    uint256 time;
    uint256 SI;

    function setValues(uint256 _principal, uint256 _rate, uint256 _time) public{
        principalAmount = _principal;
        rate = _rate;
        time = _time;
    }
    function calculate() public{
        SI = (principalAmount*rate*time)/100;
    }

    function getValue() public view returns(uint256){
        return SI;
    }
}