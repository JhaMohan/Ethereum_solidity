pragma solidity ^0.6.0;

contract MyContract {
    
    mapping(uint => string) public names;
    mapping(uint => Book) public books;
    mapping(address => mapping(uint=>Book)) public myBook;  //Nested mapping
    
    struct Book {
        string name;
        string author;
    }
    
    constructor() public {
        names[1] = "Test";
        names[2] = "Test1";
        names[3] = "Test2";
    }
    
    function addBooks(uint id,string memory _name,string memory _author) public {
        books[id] = Book(_name,_author);
    }
    
    function addMyBook(uint id,string memory _name,string memory _author) public {
        myBook[msg.sender][id] = Book(_name,_author);
    }
    
}