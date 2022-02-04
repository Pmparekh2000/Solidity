// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract local
{
    uint [4] public arr = [10, 20, 30, 40];

    function setter(uint index, uint value) public
    {
        arr[index] = value;
    }

    function len() public view returns(uint)
    {
        return arr.length;
    }

    uint[] public arr2;

    function push(uint element) public
    {
        arr2.push(element);
    }

    function remove() public
    {
        arr2.pop();
    }

    function leng() public view returns(uint)
    {
        return arr2.length;
    }
}