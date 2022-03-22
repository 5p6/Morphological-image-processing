function f=dilate(p,h)
h=fix(h);
[x,y]=size(p);
p=im2double(p);
f=zeros(x,y);
for i=2:x-1
    for j=2:y-1
        g=p(i-1:i+1,j-1:j+1);
        t=sum(sum(g.*h));
        if t~=0
            f(i,j)=1;
        end
    end
end
end