// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ModifierImpl{
    uint256 public peopleCount = 0;
    mapping(uint => person) public people;
    address owner;
    modifier onlyOwner(){
        require(msg.sender == owner);
        _;
    }

    constructor() {
        owner = msg.sender;
    }
    struct person{
        uint _id;
        string _fname;
        string _lname;
    }

    function addPerson(string memory _fname, string memory _lname) public onlyOwner{
            increment();
            people[peopleCount] =person(peopleCount, _fname, _lname);
        }

        function increment() internal{
            peopleCount+=1;
        }


}