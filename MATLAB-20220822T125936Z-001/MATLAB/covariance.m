function cov = covariance(x)
d = 3;
N = 100;
y = rand(100,3);



for i = 1:d
    sum = 0;
    for j = 1:N
mean(i) =sum + y(j,i);
    end
mean(i) = mean(i)*(1/5);
end


for i = 1:d
    sum(d,d)  = 0;
    for k = 1:d
    for j = 1:N
        
        sum(i,k) = sum(i,k) + (y(j,i) - mean(i))*(y(j,k) - mean(k))';
        
    end
    C(i,k) = (1/N-1).*sum(i,k);
    disp(C);
    end
   
end


        
        