#  Array Error Handling

This repository contains a Solidity smart contract named modETHAVAX1, which serves as a demonstration of error handling in Ethereum smart contracts. The contract includes functions that perform various checks and validations, showcasing the usage of error handling mechanisms in Solidity.
## Description

* The function (factorsOf12) checks whether the provided array contains the factors of 12. It utilizes the require statement to enforce that the elements of the array must be either 1, 2, 3, or 12. If the condition is not met, an error is raised, providing feedback about the issue.
* The array_length function demonstrates the use of the assert statement to ensure that the length of the provided array is greater than zero. If the condition is false, it triggers an assertion error.
* The function (first3wholenums) checks if the first element of the provided array is 0, indicating the starting number for whole numbers. If the condition is not satisfied, the function reverts with an error message.


## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., arrayerrhandling.sol). Copy and paste the following code into the file:

```javascript
//1.SPDX-License-Identifier: MIT
pragma solidity 0.8.9;
contract modETHAVAX1{
    function factorsOf12(uint[] memory factors)public pure returns(string memory) {
      for(uint i=0;i<factors.length;i++){
        require(factors[i]==1 || factors[i]==2 || factors[i]==3 || factors[i]==12, "The entered array does not contain the factors of 12");
      }
    return "The array contains the factors of 12";
    }
    function array_length(uint[] memory array)public pure returns(uint){
        assert(array.length>0);
        return array.length;
    }
    function first3wholenums(uint[] memory nums)public pure returns(uint[] memory){
        if(nums[0]!=0){
            revert("The starting number should be 0 to be a whole number");
        }
        return nums;
    }
}

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.9" (or another compatible version), and then click on the "Compile arrayerrhandling.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "arrayerrhandling" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it .
## Authors

Praneel Patel GM

[@praneelpatel88@gmail.com]

## License

This project is licensed under the [MIT] License - see the LICENSE.md file for details
