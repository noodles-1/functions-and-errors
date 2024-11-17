// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.7;

contract ErrorHandling {
    function borrowBooks(uint numBooks) public pure {
        require(0 < numBooks && numBooks <= 5, "Number of books to be borrowed must only be 1 to 5.");
    }

    function authenticateAdmin(string username, string password) public pure {
        if (username != "admin" && password != "admin123")
            revert("Invalid username or password.")
    }

    uint total;

    function summateNums() public view {
        assert(total == 0);

        for(uint i = 1; i <= 10; i++) {
            total += i;
        }
    }
}