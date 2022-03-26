function f=O(F,H) % F是我们要处理的图像，H是我们感兴趣元素的特征结构元
b=[1 1 1;1 1 1;1 1 1];
g=corrosion(F,H);
f=D(g,F,b,45);%这里用测地膨胀计算 D就是重建开运算的函数
end
