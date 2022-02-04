// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract State
{
    uint public age = 20;
    uint public number;

    constructor() 
    {
        age = 30;
    }

    function setAge() public
    {
        age = 10;
    }

}