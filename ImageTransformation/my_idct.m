function [ X ] = my_idct( Y )
[x,y]=size(Y);
C=zeros(x,y);
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
X=C'*Y*C;
end

