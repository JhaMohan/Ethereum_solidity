pragma solidity ^0.5.11;


contract myContract {
    //1.storage
    //2.memory
    //3. stack  -> if you declare a variable inside a function
    //4. calldata -> for complex data for public and external function

//1. storage  -> value stored permanently on blockchain,it's decleared outside of the functions 
uint a;

struct User {
    string name;
}
User[] users;

function foo() external {
    User storage user = user[0];
    user.name = 'whatever you want';
}


         
//2. memory -> it will available during the execution of function only, once the function execution stop variable get distroyed.


function foo(uint[] calldata _username) external {
    
}





}


