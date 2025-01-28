// SPDX-License-Identifier: MIT

pragma solidity 0.8.28;

contract SimpleStorage {

    uint256 public favoriteNumber = 2;
    struct Person{
        uint256 number;
        string name;
    }

    Person[] public listOfPeople;
    mapping(string => uint256) public nameOfFaveNumber; 

    function store(uint256 _number) public virtual{
        favoriteNumber += _number;
    }

    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }

    function addPeople(uint256 _number, string memory _name) public{
        listOfPeople.push(Person(_number,_name));
        nameOfFaveNumber[_name] = _number;
    }
}