pragma solidity ^0.6.0;

interface Solver {
  function whatIsTheMeaningOfLife() external view returns (bytes32);
}

contract MagicNumFactory {
  bytes32 public answer;
  uint256 public op_size;

  function validateInstance(address _instance) public returns (bool) {
    Solver solver = Solver(_instance);
    
    // Query the solver for the magic number.
    bytes32 magic = solver.whatIsTheMeaningOfLife();
    answer = magic;
    if(magic != 0x000000000000000000000000000000000000000000000000000000000000002a) return false;
    
    // Require the solver to have at most 10 opcodes.
    uint256 size;
    assembly {
      size := extcodesize(solver)
    }
    op_size = size;
    if(size > 10) return false;
    
    return true;
  }
}

