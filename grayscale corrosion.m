function f=graycorrosion(F,b)
F=im2double(F);
[x,y]=size(b);
[x1,y1]=size(F);
f=zeros(x1,y1);
g=zeros(x-1+x1,y1+y-1);
g((x-1)/2+1:x1+(x-1)/2,(y-1)/2+1:(y-1)/2+y1)=F;
g_h=zeros(x-1+x1,y1+y-1);
g_h((x-1)/2+1:x1+(x-1)/2,(y-1)/2+1:(y-1)/2+y1)=ones(x1,y1);
for i=(x-1)/2+1:x1+(x-1)/2
    for j=(y-1)/2+1:(y-1)/2+y1
        g_s=g(i-(x-1)/2:i+(x-1)/2,j-(y-1)/2:j+(y-1)/2);
        h=find(b&g_h(i-(x-1)/2:i+(x-1)/2,j-(y-1)/2:j+(y-1)/2));     
        f(i-(x-1)/2,j-(y-1)/2)=min(min(g_s(h)));
    end
end
end
