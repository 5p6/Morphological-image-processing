function f=HMT(g,h)
g=im2double(g);
[x,y]=size(g);
f=zeros(x,y);
g_s=zeros(x+2,y+2);
g_s(2:x+1,2:y+1)=g;
t=sum(sum(fix(h)));
for i=2:x+1
    for j=2:y+1
        c=sum(sum(h.*g_s(i-1:i+1,j-1:j+1)));
        if c==t
            f(i-1,j-1)=1;
        end
    end
end
end
%击中击不中变换
