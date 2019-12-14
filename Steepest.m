delta=0.001;
A = magic(5);
b = 65*ones(5,1);
x=zeros(5,1);
r=b-A*x;
while abs(r)>=delta
    alpha=dot(r,r)/dot(r,A*r);
    x=x+alpha*r;
    r=b-A*x;
end