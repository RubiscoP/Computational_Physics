import numpy as np
from numpy import linalg as la
A = np.array([[4,11,14],[8,7,-2]])
B = np.array([[2,2,2,2],[1.7,0.1,-1.7,-0.1],[0.6,9/5,-0.6,-9/5]])
# Ac = np.conjugate(A)
# Act = np.transpose(Ac)
# print(Act)
def compconj(M):
    Mc = np.conjugate(M)
    Mct = np.transpose(Mc)
    return Mct

def gram_schmit_columns(X):
    q,r = la.qr(X)
    return q

def svdDecom(A):
    M = len(A[:,0])
    #转置复共轭
    Act = compconj(A)
    AtA = np.matmul(Act, A)
    eig = la.eig(AtA)
    # eig[0]本征值 eig[1]归一化的本征矢（列）
    V = eig[1]#本征矢构成V
    lam = eig[0]#AtA的所有本征值

    N = len(lam)#total dim
    lam_r = []#非零本征值
    r = 0#非零本征值的个数

    for i in range(N):
        if lam[i] < 1e-5:
            v_r = np.delete(V, i, axis=1)#去除掉对于本征值为零的 本征矢
        else:
            lam_r.append(lam[i])
            r += 1#统计非零本征值的个数

    lam_r = np.array(lam_r)#转换为np数组
    singVal = np.sqrt(lam_r)#奇异值是非零本征值得平方根

    sigma = np.eye(r)#构造对角的sigma矩阵
    for i in range(r):
        sigma[i, i] = singVal[i]#对角线上的元素为奇异值

    u_r = np.matmul(A, v_r) / singVal

    if r<M:
        #需要扩充U矩阵
        up = np.random.rand(M,M-r)
        U = np.concatenate((u_r,up),axis=1)
        U = gram_schmit_columns(U)
    else:
        U = u_r

    Udagger = compconj(U)
    omega_tmp = np.matmul(A,V)
    omega = np.matmul(Udagger,omega_tmp)

    return U,V,omega,sigma

# svdDecom(A)
U,V,omega,sigma= svdDecom(B)
# print(U)
# print(np.matmul(compconj(U),U))
# print(np.matmul(compconj(V),V))
# print(omega)
# print(sigma)
print(V)




