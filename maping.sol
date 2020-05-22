pragma solidity >=0.5.1 <0.7.0;


contract myStruct {
    uint256 public peopleCount=0;

    mapping(uint => Person) public people;
    
    struct Person {
        uint _id;
        string _FirstName;
        string _LastNmae;
    }
    
    function addPersone(string memory _Firstname, string memory _Lastname) public {
        peopleCount += 1;
        people[peopleCount] = Person(peopleCount,_Firstname,_Lastname);  
    }
    
}