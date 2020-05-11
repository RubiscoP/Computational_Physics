## Square Matrix
### Real 
$A$ is real, $Q$ is orthogonal matrix, $R$ is right triangular matrix. 
### Compex
$A$ is complex, $Q$ is unitary, $R$ is right triangular matrix. 

First $k$ col of $Q$ forms an orthonormal basis for the span of the first $k$ col of $A$ for any $k$ between 1 to n.
## Rectangular Matrix
$A\in C^{mn}$ ,$m>n$, $Q$ is unitary and$Q = [Q_{1},Q_{2}]$ is mm, $Q_{1}\in C^{mm}$  and $Q_{2} \in C^{m(m-n)}$ 

## Gram-Schmidt Process

Use GS process to make an orthonormal basis from the cols of $A$. And this basis consists the mat $Q$. So $R=Q^{T}A$

## Householder Process

Householder matrix can zero all elements in a vector except the specific one. *(imagine that the reflection mat makes a vector reflect on a specific axis, so only one element corresponds to the axis remained)* So use this character, construct a set of Householder mats to zero elements of A's cols. We will get an upper triangular mat.

## Givens Process

Due to the similar property of HouseMat, Givens can eliminate only one specific element in a vector. Do this procedure repeatly, we can transform A into a upper triangular mat. 

## Summary

$$A=[a_{1},a_{2},...,a_{n}] \to Householder \ or \ Givens \ act \ on \ A \to QR$$

$col \ of \ Q \to orthonormal \ basis \ of \ A \to Gram-Schmidt \ Process's \ result $

$Gram-Schmidt \to orthonormal \ basis \ of \ A \to Q$





