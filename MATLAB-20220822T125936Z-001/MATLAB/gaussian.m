function g = gaussian(X)

d  = 2;
sum = 0;

for i = 1:2
    for j = 1:500
sum = sum+X(j,i);
end
m(i) = sum/500;
end
disp(m);

a = 1/((2*pi)^(d/2))*((det(cov(X))^(1/2)));
disp(a);

for i =1 :500
b(i) = exp((-1/2)*((X(i,:)- m)*pinv(cov(X))*(X(i,:) - m)'));
end

for i = 1 :500
    p(i) = a*b(i);
end



plot(X,p,'.');

