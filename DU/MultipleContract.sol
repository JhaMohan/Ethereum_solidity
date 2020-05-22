pragma solidity >=0.5.1 <0.7.0;


contract ERC20Token {
    string public name;
    mapping(address => uint256) public balance;
    
    function mint() public payable {
        //  balance[msg.sender] ++;   msg.sender will took address of sendEther contract
        balance[tx.origin] ++;
    }
}





contract sendEther {
    
    
    
    mapping(address => uint256) public balance;
    
    address payable wallet;
    
    address public token;
    

    
    constructor(address payable _wallet, address _token) public {
        wallet = _wallet;
        token = _token;
    }
    
    //external modifier: function only callable from outside
    //internal modifier: function only callable from inside of smartcontract
    //public modifier: function callable from both outside and inside of smartcontract
    
    //fall back function
    receive()  external payable  {
        buyToken();
    }
    
    
    function buyToken() public payable {
        ERC20Token(address(token)).mint();
       
        wallet.transfer(msg.value);
        
    }
    
}