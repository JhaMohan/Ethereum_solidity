pragma solidity >=0.5.11 <0.7.0;


contract MyContract {
    
    mapping(address => uint) balance;
    
    
    function invest() external payable {
        
        if(msg.value < 1 ether){
            revert();
        }
        
        balance[msg.sender] += msg.value;
        
        
        
    }
    
    
    function balaceOf() external view returns (uint) {
        return address(this).balance;
    }
    
}