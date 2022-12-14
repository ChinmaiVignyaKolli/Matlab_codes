m1=[1,1]';
m2=[3,3]';
COV1=[0.1 -0.08;-0.08 0.2];
COV2=[0.1 0;0 0.1];
i=0;j=0;
while i<=500 && j<=500
    x1=-3+6*rand(2,1);
    
    y1=transpose(x1-m1);
    z1=inv(COV1);
    y2=transpose(x1-m2);
    z2=inv(COV2);
    p1=(1/(2*pi*det(COV1)^(0.5)))*exp(-0.5*y1*z1*(x1-m1));
    p2=(1/(2*pi*det(COV2)^(0.5)))*exp(-0.5*y2*z2*(x1-m2));
    P1=0.05*p1+0.95*p2;
    P2=0.1*p1+0.9*p2;
    
    if P1>0.05
        i=i+1;
        s1(i,:)=x1
    end 
    if P2>0.05
        j=j+1;
        s2(j,:)=x1
    end 
end
subplot(2,1,1)
plot(s1(:,1),s1(:,2),'.')
axis([-4 4 -4 4])
subplot(2,1,2)
plot(s2(:,1),s2(:,2),'.')
axis([-4 4 -4 4])
