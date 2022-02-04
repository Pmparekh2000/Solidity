// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract ifElse {
    function check(int a) public pure returns(string memory) {
        string memory value;
        if(a>0) {
            value = "greater then zero";
        } else if(a == 0) {
            value = "equal to zero";
        } else {
            value = "less then zero";
        }
        return value;
    }

    bool public val = true;
    function check(uint a) public returns(bool) {
        if(a>100) {
            val = true;
            return val;
        } else {
            val = false;
            return val;
        }
    }
}