// SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract MyContract {

    uint public total; 

    constructor(){
        total = 0;
    }

    function addSix() public
    {
        addOne();
        addTwo();
        addThree();
    }

    function addOne() private{
        total += 1;
    }

    function addTwo() private{
        total += 1;
    }

    function addThree() private{
        total += 3;
    }
    
}