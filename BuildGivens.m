%构造的矩阵格式[c,s;-s,c]
%使得向量[a,b]中的一个变为0，另一个变为sqrt(a^2+b^2)
%为保证数值稳定性，c和s选取时引入t=b/a或a/b
function g=BuildGivens(a,b,type) 
if type==1 %要求将向量[a,b]中的b变为0
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
else %要求将向量[a,b]中的a变为0
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