pragma solidity ^0.6.0;

contract Destruct {

  receive() external payable {
  }

  function self_destruct(address payable target) public {
    selfdestruct(target);
  }
}