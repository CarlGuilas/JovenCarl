// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Ownable {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "not owner");  // FIXED
        _;
    }

    function setOwner(address newOwner) external onlyOwner {
        require(newOwner != address(0), "invalid address"); // FIXED
        owner = newOwner;
    }

    function onlyOwnerCanCallThisFunc() external onlyOwner {
        // code
    }

    function anyOneCanCall() external {
        // anyone can call this
    }
}
