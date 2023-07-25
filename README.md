# Gas-Optimizations-checklist

This Repository contains gas optimised techniques for solidity smart contracts.

1. [Packing of storage variables](checklist/Packing-of-storage-variables.md)

2. [Strcut Packing](checklist/struct-packing.md)

3. [Using Addresses with lots of leading zeroes](checklist/leading-zeros.md)

4. [Use Local Variable instead of multipule access to mapping/array](checklist/local-memory-variable.md)

5. [Don't Initialize Variables with Default Value](checklist/default-assign.md)

6. [Use External instead of Public if possible](checklist/external-instead-of-public.md)

7. [Use indexed events](checklist/use-indexed-events.md)

8. Constructor parameters should be avoided when possible

9. Multiple address mappings can be combined into a single mapping of an address to a struct, where appropriate

10. Use 10e18 instead of 10\*\*X

11. uints/ints smaller than 32 bytes incurs overhead

12. Instead of address(0) write it out, it saves gas

13. [Mappings are cheaper than Arrays!](checklist/mapping-instead-of-array.md)

14. Use private instead of public for constants/immutable

15. immutable and constant

16. keccak256() should only need to be called on a specific string literal once

17. Use assembly to write storage values

18. Use assembly balance ETH

19. Use assembly to check for address(0)

20. Use assembly for math (add, sub, mul, div)

21. Use assembly to hash

22. Don’t use SafeMath lib 0.8.0~

23. Now receive ETH best practice

24. Use abi.encodePacked() not abi.encode()

25. Optimizer

26. Solidity Version should be the latest

27. State var only set in the constructor should be immutable

28. Empty blocks should be removed or emit something

29. Loop best practice

30. Unchecked v 0.8.0~

31. Don’t using .length

32. Use else if instead of if,if,if

33. Payable is cheap use for only… func

34. Use struct for the args of batch func

35. Provide methods for batch operations

36. The order of function names

37. Make fewer external calls

38. Swap two values (a,b)=(b,a)

39. Internal functions only called once can be inlined to save gas

40. private functions must use by own contract

41. To be simple by internal func

42. error Titled;> require()

43. Splitting require() statements that use && saves gas

44. More than 32 String is high gas

45. comparision >= use less gas than >

46. NonZero is cheaper than Zero

47. Use ++i in increasing value

48. Use Shift Right/Left instead of Division/Multiplication 2X

49. Use != 0 instead of > 0 for Unsigned Integer Comparison

50. Short-circuit with || and &&

51. Use x=x+y instad of x+=y

52. Stack variable used as a cheaper cache for a state variable is only used once

53. calldata instead of memory

54. Using STORAGE instead of memory for struct/arrays saves gas

55. Use MLOAD instead of SLOAD(not using directly storage value)

56. Use bytesX instead of string

57. Use “uint256” instead of “bool”

58. Use “indexed” for uint, bool, and address

## Disclaimer

This repository may include content sourced from public GitHub repositories and other open resources.
