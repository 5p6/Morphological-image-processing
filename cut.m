function f=cut(g)
[x,y]=size(g);
B=zeros(3,3,8);
B(:,:,1)=[0 0.1 0.1;1 1 0.1;0 0.1 0.1];
B(:,:,5)=[1 0.1 0.1;0.1 1 0.1;0.1 0.1 0.1];
for i=1:3
    B(:,:,i+1)=rot90(B(:,:,i),3);
    B(:,:,i+5)=rot90(B(:,:,i+4),3);
end
X1=thining(g,B);
X2=zeros(x,y);
for i=1:8
    X2=X2|HMT(X1,B(:,:,i));
end
X3=dilate(X2,ones(3,3))&g;
f=X1|X3;
end