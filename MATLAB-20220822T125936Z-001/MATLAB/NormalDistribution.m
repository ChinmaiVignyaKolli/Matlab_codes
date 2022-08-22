function Norm = NormalDistribution(x)  

sum = 0;
for i = 1:500
sum = sum+x(i);
end
m = sum/500;
disp(m);

sumv=0;
y = 0;
for i = 1:500
    y = (x(i)-m)^2;
    sumv = sumv +y;
    
end

v = sumv/499;
disp(v);

a = 1/sqrt(2*pi*v);
for j = 1:500
b(j) = -((x(j)-m)^2)/(2*v);
c(j) = exp(b(j));
p(j) = a*c(j);
end

disp(c);

plot(x,p,'.');


    

