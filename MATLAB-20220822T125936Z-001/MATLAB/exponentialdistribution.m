function e = exponentialdistribution(x)

lambda  = 3;
for i =1:100
if x(i)>=0
    p(i) = lambda *exp(-lambda*x(i));
else
    p(i) = 0;
end
end

plot(x,p,'.');