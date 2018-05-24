function [Q1  Q0] = FindQ( P,A )
%Find charge on q1 and q0
q = 1.602e-19;
Q1=0;
Q0=0;
if A~=0
    if P < 0
        Q0=abs(q*((abs(P)+1)/2)*A) ;
        Q1=abs(q*(1-(((abs(P))+1)/2))*A);
    end
    if P > 0
        Q0=abs(q*(1-(((abs(P))+1)/2))*A) ;
        Q1=abs(q*((abs(P)+1)/2)*A);
    end
    if P==0
        Q0 = q*A/2;
        Q1=Q0;
    end
else
    Q0=0;
    Q1=Q0;
end
end

