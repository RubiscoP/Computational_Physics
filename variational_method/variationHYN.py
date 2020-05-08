import numpy as np
from numpy import linalg as mat
from scipy import linalg as la
from matplotlib import pyplot as plt

alpha = np.array([13.01,1.96,0.44,0.12])

def compconj(M):
    Mc = np.conjugate(M)
    Mct = np.transpose(Mc)
    return Mct

def create_S():
    S = np.zeros([4,4])
    for row in range(4):
        for col in range(4):
            S[row][col] = (np.pi/(alpha[row]+alpha[col]))**(3/2)
    return S

def create_T():
    T = np.zeros([4,4])
    for row in range(4):
        for col in range(4):
            T[row][col] = ( 3*alpha[row]*alpha[col]*np.pi**(3/2) )/( (alpha[row]+alpha[col])**(5/2) )
    return T
def create_A():
    A = np.zeros([4,4])
    for row in range(4):
        for col in range(4):
            A[row][col] = ( -2*np.pi )/( alpha[row]+alpha[col] )
    return A
def inveSquaRoot(s):
    n = len(s[:,0])
    s_inv = np.zeros([n,n])
    for i in range(n):
        s_inv[i,i] = 1/np.sqrt(s[i,i])
    return s_inv

def diagonalise(S):
    diagele,U = la.eigh(S)
    n = len(S[:,0])
    S_diag = np.zeros([n,n])
    for i in range(n):
        S_diag[i,i] = diagele[i]

    return U,S_diag

def plot(C):
    n = len(C[:,3])
    x = np.linspace(0,1,200)
    psai = np.zeros(200)
    for i in range(n):
        psai =  psai + C[i,0]*np.exp(-alpha[i]*x**2)
    plt.plot(x, psai, 'r')
    plt.show()

def main():
    # n = 5
    #构造S,H
    S = create_S()
    A = create_A()
    T = create_T()
    H = A + T
    #对角化S，本征值未排序
    U,S_diag = diagonalise(S)
    U_dagger = compconj(U)
    #S_diag的inverse square root
    S_invsqu = inveSquaRoot(S_diag)
    #构造V
    V = mat.multi_dot([U,S_invsqu])
    #构造H_
    V_dagger = compconj(V)
    H_ = mat.multi_dot([V_dagger,H,V])

    #解本征方程
    E,C_ = la.eig(H_)
    C = mat.multi_dot([V,C_])
    #check
    # che1 = mat.multi_dot([V_dagger,S,V])
    # che2 = mat.multi_dot([U_dagger,S,U])
    # print('check V:',che1)
    # print('check U:',che2)

    #result
    # print(E)
    # print(C_)

    return E,C

E,C = main()
plot(C)
# print(E)
