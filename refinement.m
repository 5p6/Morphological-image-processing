function f=thining(g,B) %B是用于细化的一系列结构元
g=im2double(g);
[x,y]=size(g);
f=g;
X=zeros(x,y);
for j=1:10000
    for i=1:8
    X=f;
    f=f-(HMT(f,B(:,:,i)));
      if X==f
        break;
      end
    end
    if X==f
        break;
    end
end
end
%形态学细化
