// SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract MyContract {

    event Log(string message, uint data);

    uint public total; 

    constructor(){
        total = 0;
    }
    
    function addSix() public
    {
        emit Log("before changes", total);
        addOne();
        emit Log("added one", total);
        addTwo();
        emit Log("added two", total);
        addThree();
        emit Log("added three", total);
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