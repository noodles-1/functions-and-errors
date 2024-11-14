// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.7;

contract ErrorHandling {
    function testRequire(uint num) public pure {
        require(num > 100, "Input must be greater than 100");
    }

    function testRevert(uint num) public pure {
        if (num <= 100)
            revert("Input must be greater than 10");
    }

    uint num2;

    function testAssert() public view {
        assert(num2 == 0);
    }
}