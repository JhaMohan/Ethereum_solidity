pragma solidity ^0.5.11;

contract myContract {
    //1. storage arrays
    //2. memory arrays
    //3. array arguments and return arrays from function

//1. storage arrays
uint[] myArray; //curd , create, read , update, delete

function foo() external {
    myArray.push(20);
    myArray.push(30);

    myArray[1];

    myArray[0] = 20;

    delete myArray[1];

    for(uint i =0; i < myArray.length; i++) {
        myArray[i];
    }
}

//2. memory arrays
function bar() external {
    uint[] memory newArray = new uint[](10);

    newArray[0] = 20;
    newArray[1] = 30;

    newArray[0];

    delete newArray[0]; 
}

//3. array in functions
 function fooBar(uint[] calladata myArr) external {

 }
  

function fooBar(uint[] memory myArr) public returns(uint[] memory) {

 }










}