pragma solidity ^0.4.18;

import '../contracts/PresaleViewo.sol';


contract PresaleViewoMock is PresaleViewo {
    uint256 mockTime = 0;
    function PresaleViewoMock() public 
        PresaleViewo()
    {
    }
    // Debug method to redefine current time
    function setTime(uint256 _time) public {
        mockTime = _time;
    }

    function getTime() internal view returns (uint256) {
        if (mockTime != 0) {
            return mockTime;
        } else {
            return now;
        } 
    }
}