// SPDX-License-Identifier: GPL-3.0-only

pragma solidity ^0.8.0;

contract Factorial{
    // function factorial(uint256 _n) public pure returns (uint256){
    //     if(_n<=1) return 1;
    //     return (_n * factorial(_n -1));
        
    // }
    uint256 Ans;
    function calculate(uint256 num) public{
          uint256 fact = 1;
        for (uint i = 1; i<=num; i++) 
        {
            fact = fact*i;
        }
        Ans = fact;

    }

    function factorial() public view returns(uint256){
        return Ans;
    }
}