// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/ArraySum.sol";

contract CounterTest is Test {
    ArraySum public arraySum;
    uint256[] x = [1,2,3];
    function setUp() public {
        arraySum = new ArraySum();
    }

    function testsoliditySum() public view{
        uint256 result = arraySum.soliditySum(x);
        console.log(result);
    }

    function testassemblySum() view public {
        uint256 result = arraySum.assemblySum(x);
        console.log(result);
    }
}
