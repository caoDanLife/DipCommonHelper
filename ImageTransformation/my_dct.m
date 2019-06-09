function [Y] = my_dct( I )
[x,y] = size(I);
C=zeros(4);
for i=0:x-1
    for j=0:y-1
        if(i==0)
            a=sqrt(1/2);
        else
            a=1;
        end
        C(i+1,j+1)=a*sqrt(2/x)*cos(pi*(j+0.5)*i/x);
    end
end
 Y=C*I*C';
