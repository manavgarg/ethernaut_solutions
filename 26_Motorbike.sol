pragma solidity ^0.6.0;


contract Destruct {

  function call() external payable {
      address payable addr = payable(0xsome_addr);
      selfdestruct(addr);
  }

}
