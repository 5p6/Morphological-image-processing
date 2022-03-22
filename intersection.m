function f=inte(g_s,g)
g_s=im2double(g_s);
g=im2double(g);
[x,y]=size(g);
f=zeros(x,y);
for i=1:x
    for j=1:y
        if g(i,j)==g_s(i,j)
            f(i,j)=g(i,j);
        end
    end
end
end