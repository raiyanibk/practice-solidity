// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract EventDemo
{
    event messLog(address indexed sender, string message);
    event messLog2();
    event Deposit(address indexed _from, bytes32 indexed _id, uint _value);

    function deposit(bytes32 _id) public payable {      
        emit Deposit(msg.sender, _id, msg.value);
    }

    function test() public {
        emit messLog(msg.sender, "Hello World!");
        emit messLog(msg.sender, "Hello EVM!");
        emit messLog2();
    }
}

//============================= Capture these events in your JavaScript code ==========
let contract_abi = abi_json _code_during_contract_compilation;
let EventTest = web3.eth.contract(contract_abi);
let EventTestContract = ClientReceipt.at("0x98...");

EventTestContract.transfer(function(err, data) {
   if (!err)
   console.log(data);
}); 