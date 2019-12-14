clear all;
format long;
% A=[10,-7,0,1;-3,2.099999,6,2;5,-1,5,-1;2,1,0,2];
% b=[8;5.900001;5;1];
A = magic(5);
b = 65*ones(5,1);
[A,infor,Idx]=LUDCMP(A);
if infor==1
    x=LUBKSB(A,b,Idx);
end