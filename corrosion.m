function f=corrosion(g,h)
h=fix(h);
[x1,y1]=size(h);%中点在（x1+1）/2，（y1+1）/2
g=im2double(g);
[x,y]=size(g);
c=sum(sum(h));
f=zeros(x,y);
for i=(x1+1)/2:x-(x1+1)/2
    for j=(y1+1)/2:y-(y1+1)/2   
        g_s=g(i-(x1+1)/2+1:i+(x1+1)/2-1,j-(y1+1)/2+1:j+(y1+1)/2-1);
        t=sum(sum(h.*g_s));
        if t==c
            f(i,j)=1;
        end
    end
end