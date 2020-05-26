pragma solidity ^0.5.11;


contract myContract {
 //tx
 tx.origin

 //msg
 msg.origin
 msg.sender

 Alice  => smart contract A   => smart contract B   => C
           tx.origin= Alice      tx.origin = Alice 
           msg.sender= Alice     msg.sender = smartcontract A


 //block
 block.timestamp




}


