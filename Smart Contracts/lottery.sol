// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract Lottery {
    
    address public manager;
    address payable[] public participants;

    constructor() {
        manager = msg.sender;  // global variable. Transfering address of the entire contrac to the manager.
    }

    receive() external payable { // receive() a special function to transfer ether to the contract
        require(msg.value == 1 ether);
        participants.push(payable(msg.sender));
    }

    function getBalance() public view returns(uint) {
        require(msg.sender == manager); // msg.sender => gives reference to the current request address. It can be manager or participants
        return address(this).balance; // address(this) => gives reference to the current contract address
    }

    function getRandomParticipants() public view returns(uint) {
        return uint(keccak256(abi.encodePacked(block.difficulty, block.timestamp, participants.length)));
    }

}