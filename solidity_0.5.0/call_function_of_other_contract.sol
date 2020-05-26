pragma solidity ^0.5.11;

contract A {
    //1. call function of other contract
    //2. import keyword
    //3. contract interface
    //4. error propagation

    //1. interface of B => B
    //2. address of B

    address addressB;

    function setAddressB(address _addressB) external {
        addressB = _addressB;
    }

    function callHelloWorld() external view returns(string memory) {
        B b = B(addressB);
        return b.hellWorld();
    }

}


contract B {
    function helloWorld() external pure returns (string memory) {
        return 'HelloWorld';
    }
}


