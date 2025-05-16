// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.28;

contract NinetyNinePercent {
    function is99Percent(uint256 x, uint256 y) public pure returns (bool) {
        return y == 0 ? false : x * 100 >= y * 99;
    }
}
