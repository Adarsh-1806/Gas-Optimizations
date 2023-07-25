# Mappings Instead of Arrays

Mapping use less gas as compare to array.

#### Array.sol

```solidity
pragma solidity ^0.8.0;
contract ArrayExample {
    uint256[] public dataArray;

    function addData(uint256 data) public {
        dataArray.push(data);
    }
}
```

-> total gas use: 80683

#### Mapping.sol

```solidity
pragma solidity ^0.8.0;

contract MappingExample {
    mapping(uint256 => uint256) public dataMapping;

    function addData(uint256 key, uint256 data) public {
        dataMapping[key] = data;
    }
}
```

-> total gas use: 53459

### Referances

https://blog.web3sec.news/posts/gas-optimization-deep-dive-v1/
