// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

interface IForta {
    function raiseAlert(address user) external;
}

contract IDetectionBot {
  address forta;
  int counter;

  constructor(address _addr) public {
      forta = _addr;
  }


  function handleTransaction(address user, bytes calldata msgData) external {
      IForta(forta).raiseAlert(0xsome_addr);
  }

}
