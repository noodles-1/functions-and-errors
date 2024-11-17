// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.7;

contract ErrorHandling {
    function borrowBooks1(uint numBooks) public pure {
        require(0 < numBooks && numBooks <= 5, "Number of books to be borrowed must only be 1 to 5.");
    }

    function borrowBooks2(uint numBooks) public pure {
        if (numBooks <= 0 || numBooks > 5)
            revert("Number of books to be borrowed must only be 1 to 5.");
    }

    uint total;

    function summateNums() public {
        assert(total == 0);

        for(uint i = 1; i <= 10; i++) {
            total += i;
        }
    }
}