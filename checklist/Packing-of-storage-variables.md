## Packing of storage variable

---

Pack variables in one slot by defining them in a lower data type. Packing only helps when multiple variables of the packed slot are being accessed in the same call. If not done correctly, it increases gas costs instead, due to shifts required.

If variables occupying the same slot are both written the same function or by the constructor, avoids a separate Gsset (20000 gas). Reads of the variables can also be cheaper

### Before

```solidity
    contract Test1{
        uint32 x;   //storage slot 1
        uint256 y;  //storage slot 2
        uint32 z;   //storage slot 3
    }
```

### After

```solidity
    contract Test2{
        uint256 y;  //storage slot 1
        uint32 x;   //storage slot 2
        uint32 z;   //storage slot 2
    }
```
