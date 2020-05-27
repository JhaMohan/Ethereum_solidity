pragma solidity ^0.6.0;

contract MyContract {
    
    uint[] public number = [1,2,3,4,5,6,7,8];
    
    
    function countEven() public view returns (uint) {
        uint count = 0;
        
        for(uint i =0;i<number.length; i++) {
            
            if(isEven(number[i])) {
                count++;
            }
        }
        
        return count;
    }
    
    
    function isEven(uint _number) public pure returns (bool) {
        
        if( _number%2 == 0){
            return true;
        }else {
            return false;
        }
    }
    
}