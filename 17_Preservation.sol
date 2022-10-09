pragma solidity ^0.6.0;

contract preserve {

  address public timeZone1Library;
  address public timeZone2Library;
  address public owner; 
  uint storedTime;

  function setTime(uint256 key) public {
      uint160 value = uint160(key);
      address to_store = address(value);
      owner = to_store;
  }

}