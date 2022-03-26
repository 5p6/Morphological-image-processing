function f=O(F,H)
b=[1 1 1;1 1 1;1 1 1];
g=corrosion(F,H);%H是我们感兴趣元素的特征结构元
f=D(g,p,b,45);%这里用测地膨胀计算
end