// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract CountOddNumbers {

    int256[] public values = [ int256(10), int256(15), int256(18), int256(13) ];
    function countOddNumbers() public view returns(int) {
        int countOfOdd = 0;
        for (uint index = 0; index < values.length; index++) {
            if (isOdd(values[index])) {
                countOfOdd++;
            }
        }

        return countOfOdd;
    }

    function isOdd(int _number) public pure returns(bool) {
        if(_number % 2 ==1) {
            return true;
        }

        return false;
    }
}
