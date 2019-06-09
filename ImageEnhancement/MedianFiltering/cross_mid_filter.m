function [ G ] = cross_mid_filter( I,n )
[height,width]=size(I);
x1 = double(I);
x2 = x1;

for i = 1:height-n+1
    for j = 1:width-n+1
        c = x1(i:i+n-1,j:j+n-1);
        e = [c((n+1)/2,:)];
        for k = 1:n-(n+1)/2
           e = [e c(k,(n+1)/2) c(n-k+1,(n+1)/2)];
        end
        tmp = bubsort(e);
        tmp = tmp(((n*n-4*power((n-1)/2,2))-1)/2);
        x2(i+(n-1)/2,j+(n-1)/2) = tmp;
    end
end
G = uint8(x2);
end

