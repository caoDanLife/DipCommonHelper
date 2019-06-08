function [ G ] = laplace_sharp_filter( I,n )
[height, width] = size(I);
I = double(I);
A = I;
for i = n-1:height-n+2
    for j = n-1:width-n+2
        A(i,j) = 5*I(i,j)-I(i+1,j)-I(i-1,j)-I(i,j+1)-I(i,j-1);
        if A(i,j)>=255
            A(i+(n-1)/2,j+(n-1)/2)=255;
        else
            A(i+(n-1)/2,j+(n-1)/2)=A(i,j);
        end
    end
end
G = uint8(A);


end

