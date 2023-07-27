# Usage of uints/ints smaller than 32 bytes (256 bits) incurs overhead

When using elements that are smaller than 32 bytes, your contract’s gas usage may be higher. This is because the EVM operates on 32 bytes at a time. Therefore, if the element is smaller than that, the EVM must use more operations in order to reduce the size of the element from 32 bytes to the desired size.

### Recommended

Use a larger size then downcast where needed

### Referance

https://docs.soliditylang.org/en/v0.8.11/internals/layout_in_storage.html
