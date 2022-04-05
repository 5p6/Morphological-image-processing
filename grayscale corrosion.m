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
        h=find(b);%因为b和g_s点乘时会有零，min又是向下取值，故需要找到不为零的分量,找到在b区域内的g_s不为0的值
        if size(h,1)~=0%如果存在部位零的值；
        f(i-(x-1)/2,j-(y-1)/2)=min(min(g_s(h)));
        else%b区域内g_s都是0，则此时f=0；
        f(i-(x-1)/2,j-(y-1)/2)=0;
        end
    end
end
end
