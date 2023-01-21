// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FeeCollector {
    address public owner;
    uint256 public balance;
    
    constructor() {
        owner = msg.sender; // Store information who deployed contract
    }
    
    receive() payable external {
        balance += msg.value; // Keep track of balance (in WEI)
    }
    
    
    function withdraw(uint amount, address payable destAddr) public {
        require(msg.sender == owner, "Only owner can withdraw");
        require(amount <= balance, "Insufficient funds");
        
        destAddr.transfer(amount);  // Send funds to given address
        balance -= amount;
    }
}
