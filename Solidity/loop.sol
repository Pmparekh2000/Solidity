// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.5.0 < 0.9.0;

contract Loop {
    uint[3] public whilearr;
    uint[3] public forarr;
    uint[3] public doarr;
    uint public whilecount;
    uint public forcount;
    uint public docount;

    function whileloop() public {
        while(whilecount<whilearr.length) {
            whilearr[whilecount] = whilecount;
            whilecount++;
        }
    }

    function forloop() public {
        for(uint i=forcount;i<forarr.length;i++) {
            forarr[forcount] = forcount;
            forcount++;    
        }
    }

    function doloop() public {
        do {
            doarr[docount] = docount;
            docount++;
        } while(docount < doarr.length);
    }
}