// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.28;

contract DivUp {
    function divUp(uint256 x, uint256 y) public pure returns (uint256) {
        require(y != 0, "Division by zero");

        return x == 0 ? 0 : (x - 1) / y + 1;
    }
}
