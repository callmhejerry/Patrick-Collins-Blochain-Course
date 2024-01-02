// SPDX-License-Identifier: MIT 
pragma solidity 0.8.19;

contract SimpleStorage{
    struct Person{
        uint256 favoriteNumber;
        string name;
        bool isCool;
    }

    // storage varibles
    uint256 public myFavoriteNumber;
    Person[] public people;
    mapping(string => uint256) public nameToNumber;


    function store(uint256 _favoriteNumber)public virtual{
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve()public view returns(uint256){
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber)public{
        Person memory person = Person({
            favoriteNumber: _favoriteNumber,
            name : _name,
            isCool: true
        });
        people.push(person);
        nameToNumber[_name] = _favoriteNumber;
    }
}