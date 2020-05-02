function feigenbom()

u = 2.6:0.001:4;
X = ones(250,length(u));
X(1,:) = 0.6.*X(1,:);

for i = 1:250
X(i+1,:) = u.*(X(i,:)-X(i,:).^2);
end

plot(u,X(150:end,:),'b.')

end
