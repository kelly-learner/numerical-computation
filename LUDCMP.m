function [A,infor,Idx]=LUDCMP(A) %��ѡ��Ԫ��LU�ֽ�
[~,n]=size(A); %��������
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
    end %���ڵ�k�У��ӵ�k�п�ʼ�ҵ�����Ԫ��
    if p>k %����Ԫ�ز��Ǳ���Ԫ�أ�����������һ�н���
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