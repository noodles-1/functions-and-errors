# Functions and Errors

This Solidity program applies the error handling techniques such as `require()`, `assert()`, and `revert()`.

## Description

The program features 3 functions, `borrowBooks1()`, `borrowBooks2()`, and `summateNums()` to implement the error handling functions on Solidity. The `borrowBooks1()` function will let the user borrow only 1 to 5 books per day using the `require()` function. The `borrowBooks2()` will also let the user borrow only 1 to 5 books using the `revert()` function. Lastly, the `summateNums()` will first assert that total is equals to 0 before adding all numbers from 1 to 10.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., CreateToken.sol). Copy and paste the following code into the file:

```javascript
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
```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.7" or newer, and then click on the "Compile CreateToken.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the mint or burn function. You can also check the values of the public state variables by clicking on them.

## Authors

Adriane Gil Roa  


## License

This project is licensed under the MIT License - see the LICENSE file for details