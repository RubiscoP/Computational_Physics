[T,Y] = ode45('lorentsfun',[0,2000],[1,2]);
plot(Y(:,1));
plot(Y(:,2));

