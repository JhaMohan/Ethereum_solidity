pragma solidity >=0.5.1 <0.7.0;


contract Mycontract {
    
    string  name;
    
    constructor() public {
        name ="mohan";
    }
    
    function set(string memory _name) public {
        name = _name;
    }
    
    function get() view public returns (string memory) {
        return name;
    }
    
}