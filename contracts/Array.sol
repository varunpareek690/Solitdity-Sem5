// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract ArrayEx {
    person[] public people;
    uint256 public peopleCount;
    uint256 public globalId = 1;
    person public personToBeFound;

    struct person {
        string _fname;
        string _lname;
        uint256 personId;
    }

    function addPerson(string memory _fname, string memory _lname) public {
        people.push(person(_fname, _lname, globalId++));
        peopleCount += 1;
    }

    function findPerson(uint256 ID) public returns(bool) {
        for(uint256 i = 0; i < people.length; i++) {
            if(people[i].personId == ID) {
                personToBeFound = people[i];
                return true;
            }
        }
            return false;
    }

    function returnPersonToBeFound() public view returns(person memory){
        return personToBeFound;
    }
}
