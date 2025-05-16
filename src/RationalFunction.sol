// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.28;

contract RationalFunction {
    function f(uint256 x) public pure returns (uint256) {
        require(x > 1, "x must be > 1");
        return (100 * x) / (x - 1);
    }
}
