// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.28;

contract IsNBitSet {
    function main(bytes32 x, uint256 n) public pure returns (bool) {
        require(n < 256, "Bit index out of range");
        return (uint256(x) & (1 << n)) != 0;
    }
}
