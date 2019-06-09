function [ G ] = box_window_mid_filter( I,n )
[height,width]=size(I);
x1 = double(I);
x2 = x1;

for i = 1:height-n+1
    for j = 1:width-n+1
        c = x1(i:i+n-1,j:j+n-1);
        e = c(1,:);
        for k = 2:n
            e = [e, c(k, :)];
        end
        tmp = bubsort(e);
        tmp = tmp((n*n+1)/2);
        x2(i+(n-1)/2,j+(n-1)/2) = tmp;
    end
end
G = uint8(x2);
end

