function [ G ] = sobel( I )
[x,y] = size(I);
G=I;
I=double(I);
I1=I;I2=I;
for i=2:x-1
    for j=2:y-1
        I1(i,j)=-I(i-1,j-1)-2*I(i-1,j)-I(i-1,j+1)+I(i+1,j-1)+2*I(i+1,j)+I(i+1,j+1);
        I2(i,j)=-I(i-1,j-1)+I(i-1,j+1)-2*I(i,j-1)+2*I(i,j+1)-I(i+1,j-1)+I(i+1,j+1);
        G(i,j)=sqrt(I1(i,j)^2+I2(i,j)^2);
    end
end    



end

