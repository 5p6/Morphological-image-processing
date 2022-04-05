function f=convhull_s(g)
g=im2double(g);
[x,y]=size(g);
B=zeros(3,3,4);
B(:,:,1)=[1 0 0;1 0.1 0;1 0 0];
B(:,:,2)=B(:,:,1)';
B(:,:,3)=[0 0 1;0 0.1 1;0 0 1];
B(:,:,4)=B(:,:,3)';
D=zeros(x,y,4);
X=zeros(x,y,2);
X(:,:,1)=g;
for i=1:4
    for j=1:5000
    X(:,:,2)=X(:,:,1);
    X(:,:,1)=X(:,:,1) + HMT(X(:,:,1),B(:,:,i));
    if X(:,:,2)==X(:,:,1)
      D(:,:,i)=X(:,:,2);
    break;
    end
    end
end
f=D(:,:,1)+D(:,:,2)+D(:,:,3)+D(:,:,4);
end