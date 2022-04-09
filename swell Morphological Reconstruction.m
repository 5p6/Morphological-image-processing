function f=RD(F,G,b)
i=0;
while i<1
        X=F;
        F=D(F,G,b,1);
        if X==F
            i=i+1;
            break;
        end
end
f=X;
end
