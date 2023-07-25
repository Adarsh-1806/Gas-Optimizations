# Gas-Optimizations-checklist

This Repository contains gas optimised techniques for solidity smart contracts.

[Packing of storage variables](checklist/Packing-of-storage-variables.md)

[Strcut Packing](checklist/struct-packing.md)

[Using Addresses with lots of leading zeroes](checklist/leading-zeros.md)

[Use Local Variable instead of multipule access to mapping/array](checklist/local-memory-variable.md)

[Don't Initialize Variables with Default Value](checklist/default-assign.md)

[Use External instead of Public if possible](checklist/external-instead-of-public.md)

[Use indexed events](checklist/use-indexed-events.md)

Constructor parameters should be avoided when possible

Multiple address mappings can be combined into a single mapping of an address to a struct, where appropriate

Use 10e18 instead of 10\*\*X

uints/ints smaller than 32 bytes incurs overhead

Instead of address(0) write it out, it saves gas

[Mappings are cheaper than Arrays!](checklist/mapping-instead-of-array.md)

Use private instead of public for constants/immutable

immutable and constant

keccak256() should only need to be called on a specific string literal once

Use assembly to write storage values

Use assembly balance ETH

Use assembly to check for address(0)

Use assembly for math (add, sub, mul, div)

Use assembly to hash

Don’t use SafeMath lib 0.8.0~

Now receive ETH best practice

Use abi.encodePacked() not abi.encode()

Optimizer

Solidity Version should be the latest

State var only set in the constructor should be immutable

Empty blocks should be removed or emit something

Loop best practice

Unchecked v 0.8.0~

Don’t using .length

Use else if instead of if,if,if

Payable is cheap use for only… func

Use struct for the args of batch func

Provide methods for batch operations

The order of function names

Make fewer external calls

Swap two values (a,b)=(b,a)

Internal functions only called once can be inlined to save gas

private functions must use by own contract

To be simple by internal func

error Titled;> require()

Splitting require() statements that use && saves gas

More than 32 String is high gas

comparision >= use less gas than >

NonZero is cheaper than Zero

Use ++i in increasing value

Use Shift Right/Left instead of Division/Multiplication 2X

Use != 0 instead of > 0 for Unsigned Integer Comparison

Short-circuit with || and &&

Use x=x+y instad of x+=y

Stack variable used as a cheaper cache for a state variable is only used once

calldata instead of memory

Using STORAGE instead of memory for struct/arrays saves gas

Use MLOAD instead of SLOAD(not using directly storage value)

Use bytesX instead of string

Use “uint256” instead of “bool”

Use “indexed” for uint, bool, and address

## Disclaimer

This repository may include content sourced from public GitHub repositories and other open resources.
