% ��������
c = 0.5; k = 2;
x = (0:.1:5)';
y = c*k.^x + 2*(rand(size(x))-0.5);

% ���
ft = fittype(@(c, k, x)c*k.^x); % ��Ҫ��ϵĺ�����ʽ
f = fit(x, y, ft, 'StartPoint', [1 1]);
plot(f, x, y);