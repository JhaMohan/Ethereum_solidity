pragma solidity >=0.5.1 <0.7.0;


contract myStruct {
    
    Person[] public people;
    
    uint256 public peopleCount;
    
    struct Person {
        string _FirstName;
        string _LastNmae;
    }
    
    function addPersone(string memory _Firstname, string memory _Lastname) public {
        people.push(Person(_Firstname,_Lastname));
        peopleCount += 1;
    }
    
}