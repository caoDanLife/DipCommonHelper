function [ S,Psk,B ] = grey_level_mapping( P,X )
[x,y]=size(P);
S=zeros(x,y);
S1=zeros(x,y);

for i=1:y
    for j=1:i
        S(1,i)=P(1,j)+S(1,i);% S=T(r)
    end
end

for k=1:y
    for z=1:y
       S1(1,z) = S(1,k)-X(1,z);
    end
    [m,p] = min(abs(S1));
    S(1,k)=X(1,p);% sk quantification
end

B=unique(S);% new grey_level
Psk=zeros(size(B));
C=zeros(size(B));
tmp=0;
for m=1:length(B)
    for j=1+tmp:length(S)
      if(B(m)==S(j))
        C(m)=C(m)+1;
      end
      if(j==256 || S(j+1)-S(j)~=0.0)
          break;
      end
    end
    tmp=j;
    disp(tmp);
end   
% calculate Psk
tmp=0;
for j=1:length(B)
    
    for k=1:C(j)
       Psk(j)=P(tmp+k)+Psk(j);
    end
    tmp=k+tmp;
end
        
    

    
  
end

