// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.28;

contract Account2 {
    address immutable owner;

    constructor(address _owner) payable {
        owner = _owner;
    }

    function withdraw() external {
        require(msg.sender == owner, "Not owner");
        (bool ok,) = owner.call{value: address(this).balance}("");
        require(ok);
    }
}

contract AccountMaker {
    function makeAccount(address owner) external payable returns (address addr) {
        bytes memory bytecode = abi.encodePacked(type(Account2).creationCode, abi.encode(owner));

        bytes32 salt = bytes32(bytes20(owner));

        assembly {
            let encoded_data := add(bytecode, 0x20)
            let encoded_size := mload(bytecode)
            addr := create2(callvalue(), encoded_data, encoded_size, salt)
            if iszero(addr) { revert(0, 0) }
        }
    }
}
