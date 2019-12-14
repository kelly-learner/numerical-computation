function [A,infor,Idx]=LUDCMP(A) %列选主元法LU分解
[~,n]=size(A); %计算列数
infor=1;
Idx=1:n;
for k=1:(n-1)
    p=k;
    s=abs(A(k,k));
    for q=(k+1):n
        if abs(A(q,k))>s
           p=q;
           s=abs(A(p,k));
        end
    end %对于第k列，从第k行开始找到最大的元素
    if p>k %最大的元素不是本行元素，则用最大的那一行交换
      T=A(k,k:n);
      A(k,k:n)=A(p,k:n);
      A(p,k:n)=T;
      Idx(k)=p;
    end
    if abs(A(k,k))>0  
        A(k+1:n,k)=A(k+1:n,k)./A(k,k);
        A(k+1:n,k+1:n)=A(k+1:n,k+1:n)-A(k+1:n,k)*A(k,k+1:n);
    else
        infor=0;
    end
end