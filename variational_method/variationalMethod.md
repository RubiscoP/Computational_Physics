# Variational Method 

By using the Variational Method,  one can solve the stationary schrodinger equatiom in an estimate value.

The variational principle says that the expectation of Hamiltonian $H$ over an arbitrary state $|\psi\rang$ ,  will be greater than or equal to the expectation value over the ground state $|\psi_{gs}\rang$ which means: $\lang\psi|\H|\psi\rang \ge\lang\psi_{gs}|H|\psi_{gs}\rang$. 

*  Choose a set of basis function$|\chi_{n}\rang$

* Calculate the overlap matrix $S$ with the matrix elements $S_{mn}=\lang\chi_{m}|\chi_{n}\rang$.

* Calculate the Hamiltonian matrix $H$ with matrix elements $H_{mn}=\lang\chi_{n}|H|\chi_{m}\rang$.

*  Solve the generalised eigenvalue problem:

  $$HC=ESC$$



# Solution of the Generalised Eigenvalue Problem

* Diagonalise the overlap matrix $S$, $U^{\dagger}SU=s$.
* $V=Us^{-\frac{1}{2}}$.
* Construct $H'=V^{\dagger}HV$.
* Solve the transformed equation $H'C'=EC'$.
* $C=VC'$.

# This File Includes:

An example of infinite square well ``` variationMTD.py``` and an estimation of hydrogen's ground state energy```variationHYD```.