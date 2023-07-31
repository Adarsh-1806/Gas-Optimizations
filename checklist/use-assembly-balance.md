# Use Assembly balance ETH

Use assembly to check ether balance for contract itself / external address.

```solidity
// before   361 gas
function addressInternalBalance() public view returns (uint256) {
        return address(this).balance;
}

// after    202 gas
function assemblyInternalBalance() public view returns(uint256) {
    assembly {
        let c := selfbalance()
        mstore(0x00, c)
        return(0x00, 0x20)
    }
}


// before   713 gas
function addressExternalBalance(address addr) view public {
      uint256 bal = address(addr).balance;
      bal++;
}

// after    685 gas
function assemblyExternalBalance(address addr) view public {
    uint256 bal;
    assembly {
        bal := balance(addr)
    }
    bal++;
}

```
