## Leading Zeros

---

Well if you have 2 addresses - 0x000000a4323… and 0x0000000000f38210 because of the leading zeroes you can pack them both into the same storage slot, then just prepend the necessary amount of zeroes when using them. This saves you storage when doing things such as checking the owner of a contract.

---

- address >> 20bytes
- 1 slot = 32 bytes

0x**000000**a4323 == 0\*6+a4323…

0x**0000000000**f38210 == 0\*10+f3820…

0\*16 == 16hex == 8bytes

- 2 addresses can be set into 1slot(20bytes\*2 - 8bytes)
