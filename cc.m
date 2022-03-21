function f=cc(g,h)
g=im2double(g);
[x,y]=size(g);
f=zeros(x,y);
c=sum(sum(h));
for i=2:x-1
    for j=2:y-1   
        g_s=g(i-1:i+1,j-1:j+1);
        t=sum(sum(h.*g_s));
        if t==c
            f(i,j)=1;
        end
    end
end
end