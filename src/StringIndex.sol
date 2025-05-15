// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.28;

contract StringIndex {
    function main(string memory str, uint256 index) public pure returns (string memory) {
        bytes memory strBytes = bytes(str);
        require(index < strBytes.length, "Index out of bounds");

        bytes memory result = new bytes(1);
        result[0] = strBytes[index];
        return string(result);
    }
}
