## Struct Packing

---

A common gas optimization is “packing structs” or “packing storage slots”. This is the action of using smaller types like uint128 and uint96 next to each other in contract storage. When values are read or written in contract storage a full 256 bits are read or written. So if you can pack multiple variables within one 256 bit storage slot then you are cutting the cost to read or write those storage variables in half or more.

Packing structs is a way to reduce contract storage reads and writes. Because with it you can get the values of multiple state variables or write the values of multiple state values in a single state read or state write to contract storage.

Here is an example of an unoptimized struct:

```solidity
struct MyStruct {
  uint256 myTime;       //slot1
  address myAddress;    //slot2
}
```

Example of an optimized struct:

```solidity
struct MyStruct {
  uint96 myTime;        //slot1
  address myAddress;    //slot1
}
```
