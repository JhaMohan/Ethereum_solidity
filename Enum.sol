pragma solidity >=0.5.1 <0.7.0;

contract Enum {
    enum State {Waiting, Pending , Active}
    State public state;
    
    constructor() public {
        state= State.Waiting;
    }
    
    function activate() public {
        state = State.Active ;
    } 

    function isActive() view public returns (bool) {
        return state == State.Active;
    }
    
}