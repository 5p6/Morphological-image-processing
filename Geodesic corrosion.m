function f=E(g,G,n)
b=[1 1 1;1 1 1;1 1 1];
if n==1
    f=corrosion(g,b) | G;
elseif n>=2
    f=corrosion(E(g,G,n-1),b) | G;
    return;
end
end