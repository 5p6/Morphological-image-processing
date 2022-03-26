function f=D(F,G,n)
B=[1 1 1;1 1 1;1 1 1];
if n==1
    f=dilate(F,B)&G;
elseif n>=2 
    f=dilate(D(F,G,n-1),B)&G;
    return;
end
