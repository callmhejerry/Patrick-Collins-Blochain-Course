// SPDX-License-Identifier: MIT 

pragma solidity 0.8.19;
import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory{
    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract()public{
       SimpleStorage newSimpleStorageContract = new SimpleStorage();
       listOfSimpleStorageContracts.push(newSimpleStorageContract);
    }

    function sfStore(uint256 _simpleStorageIndex, uint _newSimpleStorageNumber) public {
        SimpleStorage mySimpleStorageContract = listOfSimpleStorageContracts[_simpleStorageIndex];
        mySimpleStorageContract.store(_newSimpleStorageNumber);
    }


    function sfGet(uint _simpleStorageIndex) public view returns(uint) {
        SimpleStorage mySimpleStorageContract =  listOfSimpleStorageContracts[_simpleStorageIndex];
        return mySimpleStorageContract.retrieve();
    }
}