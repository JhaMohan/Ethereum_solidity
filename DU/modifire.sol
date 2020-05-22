pragma solidity >=0.5.1 <0.7.0;


contract myStruct {
    uint256 public peopleCount;

    mapping(uint => Person) public people;
    
    uint256 openingTime = 1590049313;
    
    modifier OnlyOpen() {
        require(block.timestamp > openingTime);
        _;
    }
    
    
    // address owner;
    
    // modifier onlyOwner() {
    //     require(msg.sender == owner);
    //     _;
    // }
    
    struct Person {
        uint _id;
        string _FirstName;
        string _LastNmae;
    }
    
    // constructor() public {
    //     owner = msg.sender;
    // }
    
    // function addPersone(string memory _Firstname, string memory _Lastname) public onlyOwner {
    //     count();
    //     people[peopleCount] = Person(peopleCount,_Firstname,_Lastname) ;  
    // }
    
      function addPersone(string memory _Firstname, string memory _Lastname) public OnlyOpen {
        count();
        people[peopleCount] = Person(peopleCount,_Firstname,_Lastname) ;  
    }
    
    function count() internal {
        peopleCount += 1;
    }
    
}