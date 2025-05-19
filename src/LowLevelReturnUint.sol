// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.28;

contract LowLevelReturnUint {
    function main(address a) public returns (uint256) {
        (bool success, bytes memory data) = a.call(abi.encodeWithSignature("bar()"));
        require(success, "Low-level call failed");

        return abi.decode(data, (uint256));
    }
}
