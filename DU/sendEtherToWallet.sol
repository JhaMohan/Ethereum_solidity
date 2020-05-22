pragma solidity >=0.5.1 <0.7.0;
contract sendEther {
    mapping(address => uint256) public balance;
    address payable wallet;
    constructor(address payable _wallet) public {
        wallet = _wallet;
    }
    function buyToken() public payable {
        balance[msg.sender] += 1;
        wallet.transfer(msg.value);
    }
}