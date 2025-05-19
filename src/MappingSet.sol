// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.28;

library StorageSetLib {
    function increment3(mapping(uint256 => uint256) storage self) internal {
        self[3] += 1;
    }
}

contract MappingSet {
    mapping(uint256 => uint256) public m;

    using StorageSetLib for mapping(uint256 => uint256);

    function main() public {
        m.increment3();
    }
}
