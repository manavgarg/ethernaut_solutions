pragma solidity ^0.6.0;

contract King {

  constructor() payable public {

  }

  function call_other(address payable _to) public payable {
        (bool sent, bytes memory data) = _to.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
  }
}