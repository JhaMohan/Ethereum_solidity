pragma solidity ^0.6.0;


contract BookHotel {
    
    enum Status {Vacant,Occupied} 
    Status public currentStatus;
    
    address payable public  owner;
    
    event Occupy(address _occupent, uint _amount);
    
    constructor() public {
        owner = msg.sender;
        currentStatus = Status.Vacant;
    }
    
    
    modifier roomStatus() {
        require(currentStatus == Status.Vacant,"Room is Occupied");
        _;
    }
    
    modifier cost(uint _amount) {
        require(msg.value == _amount, "Not enough ether provided");
        _;
    }
    
    
    
    receive() external payable roomStatus cost(2 ether) {
        currentStatus = Status.Occupied;
        owner.transfer(msg.value);
        emit Occupy(msg.sender,msg.value);
    }
    
}