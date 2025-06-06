// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.28;

contract Multiplication {
    function multiply(uint8 rewards, uint8 numDays) public pure returns (uint256 totalRewards) {
        totalRewards = uint256(rewards) * uint256(numDays);
    }
}
