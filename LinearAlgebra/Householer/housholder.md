# Usage

## Numerical linear algebra
Householder transformations are widely used in numerical linear algebra, to perform **QR** decompositions and is the first step of the QR algorithm. They are also widely used for transforming to a **Hessenberg form**. For symmetric or Hermitian matrices, the symmetry can be preserved, resulting in tridiagonalization.

## QR decomposition

Householder reflections can be used to calculate QR decompositions by reflecting first one column of a matrix onto a multiple of a standard basis vector, calculating the transformation matrix, multiplying it with the original matrix and then recursing down the 

# Comparison with Givens

Finally we note that a single Householder transform, unlike a solitary Givens transform, can act on all columns of a matrix, and as such exhibits the lowest computational cost for QR decomposition and tridiagonalization. The penalty for this "computational optimality" is, of course, that Householder operations **cannot be as deeply or efficiently parallelized**. As such Householder is preferred for **dense matrices** on sequential machines, whilst Givens is preferred on sparse matrices, and/or parallel machines.