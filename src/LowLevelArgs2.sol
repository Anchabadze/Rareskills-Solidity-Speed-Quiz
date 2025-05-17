// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.28;

contract LowLevelArgs2 {
    function main(address a, uint256 x, uint256 y) public {
        (bool success,) = a.call(abi.encodeWithSignature("rare(uint256,uint256)", x, y));
        require(success, "Low-level call failed");
    }
}
