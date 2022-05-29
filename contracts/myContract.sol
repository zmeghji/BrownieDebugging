// SPDX-License-Identifier: MIT

pragma solidity 0.8.14;

contract MyContract {

    event FakeEvent(string message, uint data);

    uint public total; 

    constructor(){
        total = 0;
    }
    
    function addSix() public
    {
        emit FakeEvent("before changes", total);
        addOne();
        emit FakeEvent("added one", total);
        addTwo();
        emit FakeEvent("added two", total);
        addThree();
        emit FakeEvent("added three", total);
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