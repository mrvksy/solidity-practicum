
//SPDX-License-Identifier:MIT
pragma solidity ^0.8.7;


contract Counter {
    uint public count;

    // Function to increment count by 1
    function inc() public {
        count += 1;
    }
    // Function to decrement count by 1
    function dec() public {
        count -= 1;
        }
}
