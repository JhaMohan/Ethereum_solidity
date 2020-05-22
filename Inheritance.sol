pragma solidity >=0.5.1 <0.7.0;


contract ERC20Token {
    string public name;
    mapping(address => uint256) public balance;
    
    constructor(string memory _name) public {
        name = _name;
    }
    
    function mint() virtual public payable   {
        //  balance[msg.sender] ++;   msg.sender will took address of sendEther contract
        balance[tx.origin] ++;
    }
}





contract sendEther is ERC20Token{
    string public symbol;
    address[] public owner;
    uint256 ownerCount;
    
    
    constructor(string memory _name, string memory _symbol) ERC20Token(_name) public {
        symbol = _symbol;
    }
    
    function mint() override  public payable  {
        super.mint();
        ownerCount++;
        owner.push(msg.sender);
        
    }
    
    
}