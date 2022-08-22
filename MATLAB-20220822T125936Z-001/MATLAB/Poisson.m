function pos = poisson(x)

lambda = 20;
for k = 1:100
p(k) = (lambda^x(k)) *( exp(-lambda)/factorial(x(k)));
end

plot(x,p,'.')

