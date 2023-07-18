// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

contract ArraySum {

    function soliditySum(uint256[] calldata arr) external pure returns(uint256 ) {
        uint256 result ;
        for (uint i; i < arr.length; ++i){
            result = result + arr[i];
        }
        return result;
    }

    function assemblySum(uint256[] memory arr) external pure returns(uint256){
        uint256 result;
        assembly {
            let len := mload(arr)
            for { let i := 0 } lt(i, len) { i := add(i, 1) } {
                result := add(result, mload(add(add(arr,0x20),mul(i,0x20))))
            }
        }
        return result;
    }
}
