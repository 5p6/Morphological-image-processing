function f=D(F,G,B,n)
if n==1
    f=dilate(F,B)&G;
elseif n>=2 
    f=dilate(D(F,G,B,n-1),B)&G;
    return;
end
