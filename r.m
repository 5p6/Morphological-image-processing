function f=r(F,G,B,n)
if n==1
    f=corrosion(F,B)|G;
elseif n>=2 
    f=corrosion(D(F,G,B,n-1),B)&G;
    return;
end