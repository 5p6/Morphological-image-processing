function f=dilate(p,h)
h=fix(h);
[x1,y1]=size(h);
[x,y]=size(p);
p=im2double(p);
g_s=zeros(x+2,y+2);
g_s(2:x+1,2:y+1)=p;
f=zeros(x,y);
for i=(x1+1)/2:x+2-(x1+1)/2
    for j=(y1+1)/2:y+2-(y1+1)/2
        g=g_s(i-(x1+1)/2+1:i+(x1+1)/2-1,j-(y1+1)/2+1:j+(y1+1)/2-1);
        t=sum(sum(g.*h));
        if t~=0
            f(i,j)=1;
        end
    end
end
end
