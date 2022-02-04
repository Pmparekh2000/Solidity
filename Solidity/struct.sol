// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

struct Student {
    uint rollNo;
    string name;
}

contract Demo {

    Student public student1;

    constructor(uint rollNo, string memory name) {
        student1.rollNo = rollNo;
        student1.name = name;
    }

    function funChange(uint roll, string memory name) public {
        Student memory newStudent = Student({
            rollNo: roll,
            name: name
        });
        student1 = newStudent;
    }

    function newChange(uint rollNo, string memory name) public {
        student1.rollNo = rollNo;
        student1.name = name;
    }
}