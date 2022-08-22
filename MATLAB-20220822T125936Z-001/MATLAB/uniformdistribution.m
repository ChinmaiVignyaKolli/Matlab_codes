function s = uniformdistribution(l)

a= 0;
b= 2;

for i = 1:100
if (a<l(i)) && (l(i)<b) 
    p(i)  = 1/(b-a);
else
    p(i) = 0;
end
end
plot(l,p,'.');

    
    