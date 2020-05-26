pragma solidity ^0.5.11;

contract myContract {

    event NewTrade (
         uint date,
         address indexed from,
         address to,
         uint amount
    );


    function trade(address to, uint amount ) external {
        emit NewTrade(now,msg.sender,to,amount);
    }
}