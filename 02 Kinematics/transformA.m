%DH = [theta d a alpha]
function [A] = transformA(DH)

    th = DH(1); %Theta angle
    d = DH(2);
    a = DH(3);
    al = DH(4);
    
    ct = cos(th);
    st = sin(th);
    ca = cos(al);
    sa = sin(al);
    
    A = [ct, -ca*st, sa*st,  a*ct;
         st, ca*ct, -sa*ct, a*st;
         0, sa, ca, d;
         0, 0, 0, 1];
end
    