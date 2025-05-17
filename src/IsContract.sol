// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.28;

contract IsContract {
    function isContract(address addr) public view returns (bool) {
        uint256 size;
        assembly {
            size := extcodesize(addr)
        }
        return size > 0;
    }
}
