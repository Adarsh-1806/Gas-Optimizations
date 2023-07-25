# Use indexed events

Using indexed events can indeed help save gas when working with events in Solidity. By carefully selecting and indexing the relevant parameters in an event, you can optimize gas usage and improve the efficiency of event filtering.

#### GasSavingsExample.sol

```solidity
pragma solidity ^0.8.0;

contract GasSavingsExample {
    event NewTransaction(
        address indexed sender,
        address indexed recipient,
        uint256 amount
    );

    function transfer(address recipient, uint256 amount) public {
        emit NewTransaction(msg.sender, recipient, amount);
    }
}
```

Gas cost for above contract function call:

with indexed: 2564 gas
without indexed: 2612 gas

one indexed params can save approx `24` gas:

### Referances

https://blog.web3sec.news/posts/gas-optimization-deep-dive-v1/
