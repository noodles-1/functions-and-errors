# Functions and Errors

This Solidity program applies the error handling techniques such as `require()`, `assert()`, and `revert()`.

## Description

The program features 3 functions, `testRequire()`, `testRevert()`, and `testAssert()` to implement the error handling functions on Solidity. The `testRequire()` function will check if the `num` value of the function parameter is greater than 100 using the `require()` function. The `testRevert()` function will check the same condition but with `revert()` instead. The `testAssert()` will check if the declared `num2` is equals to 0.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., CreateToken.sol). Copy and paste the following code into the file:

```javascript
// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.7;

contract ErrorHandling {
    function testRequire(uint num) public pure {
        require(num > 100, "Input must be greater than 100");
    }

    function testRevert(uint num) public pure {
        if (num <= 100)
            revert("Input must be greater than 100");
    }

    uint num2;

    function testAssert() public view {
        assert(num2 == 0);
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