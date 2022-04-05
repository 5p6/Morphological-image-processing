function f=corrosionc(g,b,t)
f=im2double(g);
if t==1
    f=corrosion(f,b);
else
   for i=1:t 
      f=corrosion(f,b);
   end
end
end