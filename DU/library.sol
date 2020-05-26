pragma solidity >=0.5.1 <0.7.0;

import './Math.sol';

contract MyContract {
    
    uint256 public value;
    
    function calculate(uint _v1, uint _v2) public {
        value = Math.devide(_v1,_v2);
    }   
}