function f=HMT(g,h)
g=im2double(g);
[x1,y1]=size(h);
[x,y]=size(g);
f=zeros(x,y);
g_s=zeros(x+(x1-1),y+(y1-1));
g_s((x1-1)/2+1:x+(x1-1)/2,(y1-1)/2+1:y+(y1-1)/2)=g;
t=sum(sum(fix(h)));
for i=(x1-1)/2+1:x+(x1-1)/2
    for j=(y1-1)/2+1:y+(y1-1)/2
        c=sum(sum(h.*g_s(i-(x1-1)/2:i+(x1-1)/2,j-(y1-1)/2:j+(y1-1)/2)));
        if c==t
            f(i-(x1-1)/2,j-(y1-1)/2)=1;
        end
    end
end
end
