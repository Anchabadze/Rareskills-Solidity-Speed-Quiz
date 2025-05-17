// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.28;

contract LowLevel {
    function main(address a) public returns (bool) {
        (bool success,) = a.call(abi.encodeWithSignature("foo()"));
        return success;
    }
}
