t = 4.5*10^-3;%s
dt = 0.01*10^-3;%s
e = 1.6*10^-19;%c
INa = I_Na();%A
QNa = 0;

c=2;
for i = 1 : t/dt
    if(c==2)
        c=4;
    else
        c=2;
    end
        QNa=QNa+c.*INa(i);
end
QNa=(QNa+(INa(1)+INa(end))).*dt./3;
N = QNa/e;
disp(N);

