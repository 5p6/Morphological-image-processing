function f=dilate(p,h)
h=fix(h);
[x1,y1]=size(h);
[x,y]=size(p);
p=im2double(p);
g_s=zeros(x+(x1-1),y+(y1-1));
g_s(1+(x1-1)/2:x+(x1-1)/2,(y1-1)/2+1:y+(y1-1)/2)=p;
f=zeros(x,y);
for i=(x1-1)/2+1:x+(x1-1)/2
    for j=(y1-1)/2+1:y+(y1-1)/2
        g=g_s(i-(x1-1)/2:i+(x1-1)/2,j-(y1-1)/2:j+(y1-1)/2);
        t=sum(sum(g.*h));
        if t~=0
            f(i-(x1-1)/2,j-(y1-1)/2)=1;
        end
    end
end
end
