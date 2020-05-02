Iapp = 0:0.01:30;
t = 100;
dt = 0.01;
frequency = zeros(1,length(Iapp));
for i = 1:length(Iapp)
    Vs = main2(Iapp(i));
    count = 0;
    for j = 1:t/dt-1
        if Vs(j)<-40 && Vs(j+1)>-40
            count = count + 1;
        end
    end
    frequency(i) = count;
end
scatter(Iapp,frequency);