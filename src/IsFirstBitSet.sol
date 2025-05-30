// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.28;

contract IsFirstBitSet {
    function main(bytes32 x) public pure returns (bool) {
        return (uint256(x) & 1) != 0;
    }
}
