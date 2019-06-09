function [ G ] = line_mid_filter( I,n )
[height,width]=size(I);
x1 = double(I);
x2 = x1;

for i = 1:height-n+1
    for j = 1:width-n+1
        c = x1(i:i+n-1,j:j+n-1);
        e = [c(1,1) c(n,n)];
        for k = 2:n
            if(k==n-k+1)
                 e = [e c(k,k)];
            else
                 e = [e c(k,k) c(k,n-k+1)];
            end;
        end
        tmp = bubsort(e);
        tmp = tmp(((n*n-4*power((n-1)/2,2))-1)/2);
        x2(i+(n-1)/2,j+(n-1)/2) = tmp;
    end
end
G = uint8(x2);

end

