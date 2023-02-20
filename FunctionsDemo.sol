pragma solidity ^0.8.13;

contract FunctionsDemo {
    uint public x = 5;
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }
    
    function addToX(uint y) public view returns (uint) {
        return x + y;
    }

    function add(uint i, uint j) public pure returns (uint) {
        return i + j;
    }
    
    function deposit () public payable {}

    function getBalance () public view returns (uint) {
        return address(this).balance;
    }
}
