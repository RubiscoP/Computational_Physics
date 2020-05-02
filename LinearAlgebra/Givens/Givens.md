#Usage and Properties
The main use of [Givens](https://en.wikipedia.org/wiki/Givens_rotation) rotations in numerical linear algebra is to **introduce zeros  in vectors or matrices**. This effect can, for example, be employed for computing the **QR decomposition** of a matrix. 

One **advantage over Householder** transformations is that they can easily be parallelised, and another is that often for very sparse matrices they have a lower operation count.

