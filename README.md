# KaprekarElixir

Kaprekar's Constant is an algorithm by Dattatreya Ramchandra Kaprekar.

It states that if you select any given 4-digit number between 1 and 1,000 (as long as the number has at least two distinct digits), subtract the digits sorted in ascending order from the digits sorted in descending order, and repeat the operation using the result, you will end up with the number 6,174 within 7 operations.

## Use

```elixir
iex> KaprekarElixir.prove(1872)
Testing number: 1872
8721 - 1278 = 7443
Testing number: 7443
7443 - 3447 = 3996
Testing number: 3996
9963 - 3699 = 6264
Testing number: 6264
6642 - 2466 = 4176
Testing number: 4176
7641 - 1467 = 6174
Confirmed Kaprekar's constant in 5 iterations.
5
```
