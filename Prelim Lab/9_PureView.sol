// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ViewandPureFunctions {
    uint public num;

    function viewfunc() external view returns (uint) {
        return num;
    }

    function purefunc() external view returns (uint) {
        return 1;
    }

    function addtoNum(uint x) external     returns (uint) {
        return num + x;
    }

    function add(uint x, uint y) external     returns (uint) {
        return x + y;
    }
}