Uninitialized variables are assigned with the types default value. Explicitly initializing a variable with it's default value costs unnecesary gas. Not overwriting the default for [stack variables](https://gist.github.com/IllIllI000/e075d189c1b23dce256cd166e28f3397) saves **8 gas**. Storage and memory variables have larger savings

### Reccommend

Delete useless variable declarations to save gas.

Declaring uint256 i = 0; means doing an MSTORE of the value 0 Instead you could just declare uint256 i to declare the variable without assigning it’s default value, saving 3 gas per declaration

```solidity
//bad
for(uint i=0; i<x.length; i++) {
//good
for(uint i; i<x.length; i++){
```
