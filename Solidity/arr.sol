// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract arr
{
    bytes3 public b3; // 3 bytes array
    bytes2 public b2; // 2 bytes array
    bytes1 public b1; // 1 byte array

    function setter() public {
        b3 = 'abc';
        b2 = 'a';
        b1 = 'a';
    }

    bytes public b4;

    function pushEle() public {
        b4.push('x');
    }

    function access(uint i) public view returns(bytes1) {
        return b4[i];
    }

    function len() public view returns(uint) {
        return b4.length;
    }

}
