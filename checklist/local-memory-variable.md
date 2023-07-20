## Local Memory variable

---

The instances below point to the second+ access of a value inside a mapping/array, within a function. Caching a mapping's value in a local `storage` variable when the value is accessed [multiple times](https://gist.github.com/IllIllI000/ec23a57daa30a8f8ca8b9681c8ccefb0), saves **~42 gas per access**
 due to _not having to recalculate the key's keccak256 hash_ (Gkeccak256 - **30 gas**) and that calculation's associated stack operations.

### Recommend

Caching an array's struct avoids recalculating the array offsets into memory
