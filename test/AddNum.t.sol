// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.15;

import "foundry-huff/HuffDeployer.sol";
import "forge-std/Test.sol";
import "forge-std/console.sol";

contract AddNumTest is Test {
    /// @dev Address of the AddNum contract.
    AddNum public addNumm;

    /// @dev Setup the testing environment.
    function setUp() public {
        addNumm = AddNum(HuffDeployer.deploy("AddNum"));
    }

    /// @dev Ensure that you can add two values and get the answer.
    function testSetAndGetValue() public {
        addNumm.addNum(3, 12);
        assertEq(15, addNumm.getAnswer());
    }
}

interface AddNum {
    function addNum(uint256, uint256) external;

    function getAnswer() external returns (uint256);
}
