
//SPDX-License-Identifier:MIT
pragma solidity ^0.8.7;


contract Counter {
    uint public count;

    function inc() public {
        count += 1;
    }
    
    function dec() public {
        count -= 1;
        }
}
