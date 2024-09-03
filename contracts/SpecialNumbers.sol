// SPDX-License-Identifier: MIT
pragma solidity>=0.7.0 <0.9.0;

contract SpecialNumbers{
    uint private num1;
    uint internal num2;
    uint public num3;

    constructor() {
        num1=5;
        num2 = 10;
        num3 = 15;
    }

}
    contract MyNumber is SpecialNumbers{
        function getNumber() public view returns(uint num){
            return num2+num3;
        }
        function getNumber2() public{
            num3+=1;
        }
    }

    contract OtherContract{
        function getNumber() public returns(uint num){
            SpecialNumbers obj = new SpecialNumbers();
            return obj.num3();
        }
    }

    contract AnotherThirdContract is SpecialNumbers{
        function getExternalNumber() external returns(uint){
            SpecialNumbers obj1 = new SpecialNumbers();
            return obj1.num3();
                
        }
    }
