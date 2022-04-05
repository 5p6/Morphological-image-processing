function f=graycorrosion(F,b)
F=im2double(F);
[x,y]=size(b);
[x1,y1]=size(F);
f=zeros(x1,y1);
g=zeros(x-1+x1,y1+y-1);
g((x-1)/2+1:x1+(x-1)/2,(y-1)/2+1:(y-1)/2+y1)=F;
for i=(x-1)/2+1:x1+(x-1)/2
    for j=(y-1)/2+1:(y-1)/2+y1
        g_s=g(i-(x-1)/2:i+(x-1)/2,j-(y-1)/2:j+(y-1)/2);
        h=find(b.*g_s);       %找到b区域内的g_s值，
        if size(h,1)~=0 %如果存在部位零的值，则不是b区域的；
        f(i-(x-1)/2,j-(y-1)/2)=min(min(g_s(h)));
        else         %此时b区域内g_s都是0，则此时f=0；
        f(i-(x-1)/2,j-(y-1)/2)=0;
        end
    end
end
end
