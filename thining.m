function f=thining(g,t)
g=im2double(g);
f=g;
B=zeros(3,3,8);
B(:,:,1)=[0.1 0.1 0.1;0 1 0;1 1 1];
B(:,:,2)=[0 0.1 0.1;1 1 0.1;1 1 0];
B(:,:,3)=[1 0 0.1;1 1 0.1;1 0 0.1];
B(:,:,4)=[1 1 0;1 1 0.1;0 0.1 0.1];
B(:,:,5)=[1 1 1;0 1 0;0.1 0.1 0.1];
B(:,:,6)=[0 1 1;0.1 1 1;0.1 0.1 0];
B(:,:,7)=[0.1 0 1;0.1 1 1;0.1 0 1];
B(:,:,8)=[0.1 0.1 0;0.1 1 1;0 1 1];
for j=1:t
    for i=1:8
    f=f-(HMT(f,B(:,:,i)));
    end
end
end
%形态学细化
