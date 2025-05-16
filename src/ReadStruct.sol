// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.8.28;

contract ViewContract {
    struct Point {
        uint256 x;
        uint256 y;
    }

    Point public s;

    constructor(uint256 x, uint256 y) {
        s = Point({x: x, y: y});
    }
}

contract ReadStruct {
    function main(address a) public view returns (uint256 x, uint256 y) {
        (bool success, bytes memory data) = a.staticcall(abi.encodeWithSignature("s()"));

        require(success, "Call to s() failed");

        (uint256 sx, uint256 sy) = abi.decode(data, (uint256, uint256));
        return (sy, sx);
    }
}
