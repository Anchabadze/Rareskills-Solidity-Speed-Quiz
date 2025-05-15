// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.28;

contract MemoryArray {
    function main(uint8 a) public pure returns (uint256[] memory) {
        uint256[] memory result = new uint256[](a);
        for (uint256 i = 0; i < a; i++) {
            result[i] = i;
        }
        return result;
    }
}
