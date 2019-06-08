function [ G ] = smooth_filter( I,n )
template = ones(n);
[height, width] = size(I);
x1 = double(I);
x2 = x1;
for i = 1:height-n+1
    for j = 1:width-n+1
        c = x1(i:i+n-1,j:j+n-1).*template;
        s = sum(sum(c));
        tmp = s/(n*n);
        if tmp>=255
            x2(i+(n-1)/2,j+(n-1)/2)=255;
        else
            x2(i+(n-1)/2,j+(n-1)/2)=tmp;
        end
    end
end
G = uint8(x2);

end

