pragma solidity >=0.5.1 <0.7.0;


contract SendEther {
    
    
    
    mapping(address => uint256) public balance;
    
    address payable wallet;
    
    // use of event 
    //1. to emit the event in last of function execution to check whether function executed successfully
    //2. check the logs of specific event like all the Purchased evenet here
    event Purchased (
        address indexed _buyer,
        uint256 _amount
    );
    
    
    constructor(address payable _wallet) public {
        wallet = _wallet;
    }
    
    //external modifier: function only callable from outside
    //internal modifier: function only callable from inside of smartcontract
    //public modifier: function callable from both outside and inside of smartcontract
    
    //fall back function
    receive()  external payable  {
        buyToken();
    }
    
    
    function buyToken() public payable {
        balance[msg.sender] += 1;
        wallet.transfer(msg.value);
        emit Purchased(msg.sender,msg.value);
    }
    
}