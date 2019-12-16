%����ľ����ʽ[c,s;-s,c]
%ʹ������[a,b]�е�һ����Ϊ0����һ����Ϊsqrt(a^2+b^2)
%Ϊ��֤��ֵ�ȶ��ԣ�c��sѡȡʱ����t=b/a��a/b
function g=BuildGivens(a,b,type) 
if type==1 %Ҫ������[a,b]�е�b��Ϊ0
    if b==0
        c=1;
        s=0;
    elseif abs(b)>abs(a)
        t=a/b;
        s=1/sqrt(t^2+1);
        c=t*s;
    else
        t=b/a;
        c=1/sqrt(t^2+1);
        s=t*c;
    end        
else %Ҫ������[a,b]�е�a��Ϊ0
    if a==0
        c=1;
        s=0;
    elseif abs(b)>abs(a)
        t=a/b;
        c=1/sqrt(t^2+1);
        s=-t*c;
    else
        t=b/a;
        s=-1/sqrt(t^2+1);
        c=-t*s;
    end    
end
g=[c s;-s c];
end