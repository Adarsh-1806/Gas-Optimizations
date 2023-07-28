# Use private instead of public for constants/immutable

If needed, the values can be read from the verified contract source code, or if there are multiple values there can be a single getter function that returns a tuple of the values of all currently-public constants.

Saves `3406-3606` gas in deployment gas due to the compiler not having to create non-payable getter functions for deployment calldata, not having to store the bytes of the value outside of where it’s used, and not adding another entry to the `method ID` table

### Referance

https://code4rena.com/reports/2022-06-nibbl#18-using-private-rather-than-public-for-constants-saves-gas
