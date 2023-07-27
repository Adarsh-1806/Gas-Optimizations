# Constructor Params should be avoided

Constructor parameters are expensive. The contract deployment will be cheaper in gas if they are hard coded instead of using constructor parameters.

```solidity
// before
constructor(address _tokenAddress, address _infinityTreasury) {
  INFINITY_TOKEN = _tokenAddress;
}

// after

address constant INIFINITY_TOKEN = 0x1230304040404040404040404040440;
```
