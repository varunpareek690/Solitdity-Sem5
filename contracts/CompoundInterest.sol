// SPDX-License-Identifier: GPL-3.0-only

pragma solidity ^0.8.0;

contract CompoundInterest{
    uint256 principalAmount;
    uint256 rate;
    uint256 time;
    uint256 CI;
    uint256 n;

    function setValues(uint256 _principal, uint256 _rate, uint256 _time,uint256 _n) public{
        principalAmount = _principal;
        rate = _rate;
        time = _time;
        n = _n;
    }
     function CalculatedInterest() public {

    CI = principalAmount * ((1 + rate/n)**(n*time));

 }

    function getValue() public view returns(uint256){
        return CI;
    }
}