// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.28;

contract ConvertToNegative {
    error TooBig();

    function convertToNegative(uint256 x) external pure returns (int256) {
        if (x == 1 << 255) {
            return type(int256).min;
        }

        if (x > uint256(type(int256).max)) {
            revert TooBig();
        }

        return -int256(x);
    }
}
