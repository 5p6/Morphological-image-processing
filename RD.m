function f=RD(F,G,b)
i=0;
while i<1
     for j=1:5000
        X=F;
        F=D(F,G,b,j);
        if X==F
            i=i+1;
            break;
        end
     end
end
f=X;
end