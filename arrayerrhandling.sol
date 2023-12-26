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
