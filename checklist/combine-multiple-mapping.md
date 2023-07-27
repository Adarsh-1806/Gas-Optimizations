# Combine multiple mapping into single mapping

Save a storage slot for the mapping. Depending on the circumstances and sizes of types, can avoid a Gsset (20000 gas) per mapping combined. Reads and subsequent writes can also be cheaper when a function requires both values and they both fit in the same storage slot. Finally, if both fields are accessed in the same function, can save ~42 gas per access due to not having to recalculate the key's keccak256 hash (Gkeccak256 - 30 gas) and that calculation's associated stack operations.

---

The `exercisedPositions` is a mapping to check the id is true/false

However, if you have the following mapping, you may be able to delete it..

```solidity
mapping(uint256 => address) ownerOf // this mapping can use!
```

```solidity
// before
mapping(uint256 => bool) public exercisedPositions;
exercisedPositions[uint256(orderHash)] = true;
bool isExercised = exercisedPositions[longPositionId];

// after
function exercisedPositions(uint256 id) external view returns(bool) {
	return ownerOf(id) == address(0xdead);
}
bool isExercised = ownerOf(longPositionId) == address(0xdead);
```

### Referance

https://code4rena.com/reports/2022-06-putty#executive-summary
