pragma solidity ^0.6.0;



contract MyContract {
    
    //state variables :- these are stored on blockchain
    string public myString = "Hello World!";
    bytes32 public myByte32 = "Hello world";
    address myAddress = 0x529ed7Fc3A7ACCC2248630281562b8F0f610eafD;
    int public myInt = 1;
    
    struct MyStruct {
        uint myInt;
        string myString;
    }
    
    MyStruct public myStruct = MyStruct(1,"Hello World");
    
    
    function getValue() public pure returns (string memory) {
        string memory mys = "Hello World";
        return mys;
    }
    
    
}