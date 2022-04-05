function f=action(p)
p=im2double(p);
[x,y]=size(p);
F=zeros(x,y);
F([1 x],:)=p([1 x],:);
F(:,[1 y])=p(:,[1 y]);
b=[1 1 1;1 1 1;1 1 1];
f=p-D(F,p,b,20);
end
