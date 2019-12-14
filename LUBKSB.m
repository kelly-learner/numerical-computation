function x=LUBKSB(A,b,Idx) %求解方程
[~,n]=size(A);
x=b;
for k=1:n-1 
    p=Idx(k);
    if p>k
      temp=x(k);
      x(k)=x(p);
      x(p)=temp;
    end
    x(k+1:n)=x(k+1:n)-A(k+1:n,k)*x(k);
end
x(n)=x(n)/A(n,n);
for k=(n-1):-1:1
    for q = 1 : k
        x(q)=x(q)-A(q,k+1)*x(k+1);
    end
    x(k)=x(k)/A(k,k);
end
end