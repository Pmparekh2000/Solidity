// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract demo {
    struct Student {
        string name;
        uint class;
    }
    mapping(uint=>Student) public student1;

    function setter(uint rollNo, uint class, string memory name) public {
        student1[rollNo].name = name;
        student1[rollNo].class = class;
    }
    
}