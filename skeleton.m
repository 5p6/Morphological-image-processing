function F=skeleton(g)
f=im2double(g);
b=ones(3,3);
for i=1:500000
    f=corrosion(f,b);
    if sum(sum(f))==0
        c=i-1;
        break
    end
end
[x,y]=size(g);
s=zeros(x,y,c+1);
for i=0:c
    if i==0
        s(:,:,i+1)=g-dilate(corrosion(g,b),b);
    elseif i>=1
    s(:,:,i+1)=corrosionc(g,b,i)-dilate(corrosion(corrosionc(g,b,i),b),b);
    end
end
F=zeros(x,y);
for i=1:c+1
    F=s(:,:,i)|F;
end
end