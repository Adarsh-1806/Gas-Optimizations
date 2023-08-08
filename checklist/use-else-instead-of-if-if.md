# Use else if insted of if if

````solidity
// 21940 gas
contract IforElse {
  function ifs(uint i) public view returns(uint result) {
    if(i==0) result = 0;
    if(i==1) result = 1;
    if(i==2) result = 2;
    if(i==3) result = 3;
    if(i==4) result = 4;
    if(i==5) result = 5;
  }

	// 21924 gas
  function ifElse(uint i) public view returns(uint result) {
    if(i==0) {
     result = 0;
    } else if (i==1) {
      result = 1;
    } else if(i==2) {
      result = 2;
    } else if(i==3) {
      result = 3;
    } else if(i==4) {
      result = 4;
    } else {
      result = 5;
  }
  }
}```
````
