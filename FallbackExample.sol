// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract FallbackExample {
    uint256 public result;

    // receive will only be trigger when calldata is empty
    receive() external payable {
        result = 10;
    }

    fallback() external payable {
        result = 20;
    }
}
