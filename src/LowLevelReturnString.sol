// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.28;

contract LowLevelReturnString {
    function main(address a) public returns (string memory) {
        (bool success, bytes memory data) = a.call(abi.encodeWithSignature("baz()"));

        if (!success) {
            return "";
        }

        return abi.decode(data, (string));
    }
}
