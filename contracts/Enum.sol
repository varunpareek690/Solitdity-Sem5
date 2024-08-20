// SPDX-License-Identifier: GPL-3.0-only

pragma solidity ^0.8.0;

contract EnumUsage{
    enum State{Waiting,Ready,Active}
    State public state;

    constructor(){
        state = State.Waiting;
    }
    function Activate() public{
        state = State.Active;
    }
    function isActive() public view returns(bool){
        return state==State.Active;
    }
    function Waiting() public{
        state = State.Waiting;
    }
    function isWaiting() public view returns(bool){
        return state == State.Waiting;
    }
    function Ready() public{
        state = State.Ready;
    }
    function isReady() public view returns(bool){
       return state == State.Ready;
    }
}