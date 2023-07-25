# External Instead of Public

Use External instead of Public when you only need to call functions from outside of contracts. or you are not calling public functions from contract itself.

```solidity
    gas-used 24612
function PublicFunction() public returns (uint256) {
    return 5;
}

gas-used 24586
function ExternalFunction() external returns (uint256) {
    return 5;
}
```

### Referances

https://blog.web3sec.news/posts/gas-optimization-deep-dive-v1/
