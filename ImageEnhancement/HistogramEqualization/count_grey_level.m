function [ X,P ] = count_grey_level( I )
[x,y] = size(I);
P=zeros(1,256);
X=0:255;
for i=0:255 %0:max
    for j=1:x
        for k=1:y
            if I(j,k)==i
                P(i+1)=P(i+1)+1;
            end
        end
        
    end
    
end
 P=P/(x*y);% calculate the rate of how many times a grey-level pixel appears 
X=X/255;% X saves rk
end

