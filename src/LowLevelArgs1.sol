// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.28;

contract LowLevelArgs1 {
    function main(address a, uint256 x) public {
        (bool success,) = a.call(abi.encodeWithSignature("rare(uint256)", x));

        require(success, "Low-level call failed");
    }
}
