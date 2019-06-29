function [ G ] = robert( I )
[x,y] = size(I);

for i=1:x-1
    for j=1:y-1
        I(i,j)=abs(I(i+1,j+1)-I(i,j))+abs(I(i+1,j)-I(i,j+1));
    end
end    
for k=1:y
   I(x,k)=I(x-1,k); 
end    
for k=1:x
    I(k,y)=I(k,y-1);
end  
G=I;


end

