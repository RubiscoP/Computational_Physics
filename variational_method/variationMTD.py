import numpy as np
from numpy import linalg as la
from matplotlib import pyplot as plt
from scipy import linalg as lasc

def compconj(M):
    Mc = np.conjugate(M)
    Mct = np.transpose(Mc)
    return Mct

def create_S(n):
    S = np.zeros([n,n])
    for row in range(n):
        for col in range(n):
            if (row+col)%2 == 0:
                S[row][col] = 2 / (row + col + 5) - 4 / (row + col + 3) + 2 / (row + col + 1)
            else:
                S[row][col] = 0
    return S

def create_H(n):
    H = np.zeros([n,n])
    for row in range(n):
        for col in range(n):
            if (row+col)%2 == 0:
                H[row][col] = -8*((1-row-col-2*row*col)/((row+col+3)*(row+col+1)*(row+col-1)))
            else:
                H[row][col] = 0
    return H

def inveSquaRoot(s):
    n = len(s[:,0])
    s_inv = np.zeros([n,n])
    for i in range(n):
        s_inv[i,i] = 1/np.sqrt(s[i,i])
    return s_inv

def diagonalise(S):
    diagele,U = lasc.eigh(S)
    n = len(S[:,0])
    S_diag = np.zeros([n,n])
    for i in range(n):
        S_diag[i,i] = diagele[i]

    return U,S_diag

def main(n):
    # n = 5
    #构造S,H
    S = create_S(n)
    H = create_H(n)
    #对角化S，本征值未排序
    U,S_diag = diagonalise(S)
    U_dagger = compconj(U)
    #S_diag的inverse square root
    S_invsqu = inveSquaRoot(S_diag)
    #构造V
    V = la.multi_dot([U,S_invsqu])
    #构造H_
    V_dagger = compconj(V)
    H_ = la.multi_dot([V_dagger,H,V])

    #解本征方程
    E,C_ = la.eig(H_)
    C = la.multi_dot([V,C_])
    #check
    # che1 = la.multi_dot([V_dagger,S,V])
    # che2 = la.multi_dot([U_dagger,S,U])
    # print('check V:',che1)
    # print('check U:',che2)

    #result
    # print(E)
    # print(C_)

    return E,C

def plot(C):
    n = len(C[:,0])
    x = np.linspace(-1,1,200)
    psai = np.zeros(200)
    for i in range(n):
        psai =  psai + C[i,0]*(x**i)*(x-1)*(x+1)
    # form = (x**0)*(x-1)*(x+1)
    plt.plot(x,psai,'r',x,np.cos((np.pi/2) * x),'b')
    # plt.plot(x, psai, 'r')
    plt.show()

E,C = main(5)
# Esort = np.sort(E)
print(E)
# plot(C)
# print(C[:,1])


# s = create_S(5)
# # s_eig,U = la.eigh(s)
# U,s_diag = diagonalise(s)
# U_dagger = compconj(U)
# ss = la.multi_dot([U_dagger,s,U])
# # print(s_diag)
# # print(ss)
#
# s_inv = inveSquaRoot(s_diag)
# V = la.multi_dot([U,s_inv])
# V_dagger = compconj(V)
# ch = la.multi_dot([V_dagger,s,V])
# print(ch)


