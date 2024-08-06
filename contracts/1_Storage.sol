// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract Storage {

    uint256 num1;
    uint256 num2;
    function store(uint256 number1,uint256 number2)public{
        num1=number1;
        num2=number2;
    }

    

    function swap() public {
        num1 = num1^num2;
        num2=num1^num2;
        num1 =num1^num2;
    }
    
    function returnNum1() public view returns(uint256,uint256){
        return (num1,num2);
    }
}