pragma solidity ^0.6.0;

interface Privacy {
    function unlock(bytes16 _key) external;
}

contract Privacy_Break {

  function call(bytes32 value, address _addr) public {
      bytes16 key = bytes16(value);
      Privacy privacy = Privacy(_addr);
      privacy.unlock(key);
  }
}