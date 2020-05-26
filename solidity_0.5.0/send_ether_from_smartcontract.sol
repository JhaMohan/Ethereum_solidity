pragma solidity >=0.5.11 <0.7.0;


contract MyContract {
  
  
  //1. transfer
  //2. address vs address payable
  //3. address payable casting (address ans uint160)
  //4. msg.sender
  //5. send vs transfer
  
     function invest() external payable {
    
        
    }
    
    
    function balaceOf() external view returns (uint) {
        return address(this).balance;
    }
  
  
  
  
  address payable[] recipients;
  
  function sendEther(address payable recipient) payable external  {
      
      recipient.transfer(1 ether);
      //transfer 1 ether from this smart contract to recipient0
  
      address a;
      
      a = recipient;
      
    //   a.transfer(1000); // this will give error
      
      msg.sender.transfer(100);
      
    //   recipient.send(1 ether);
      
      
      
      
      
  }
  
  
    
}