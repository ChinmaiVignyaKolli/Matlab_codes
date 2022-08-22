function p = PCA(X,k)
lambda = 0.049;
z = mean(X);
v  = cov(X);
a = v - (eye(33)*lambda);


disp(a);

%disp(z);




