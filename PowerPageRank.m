function [ Ipower,Niteration ] = PowerPageRank( H,alpha )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

[m,n] = size(H)

c = sum (H,1);
r = sum (H,2);

Hs = zeros(n,'double');

    for j= 1:n
        for i = 1:m
            Hs(i,j) = H(i,j)/c(j);
        end
    end
    
    A = zeros (n, 'double');
    
    for j = 1:n
        for i = 1:m
            if c(j) == 0 
                A(i,j) = 1/n
            end
       
        end
        
    end
   
S=Hs+A
Id = speye(m,n)
e = ones(n,1)
I = (Id -alpha*S)\e

I = I/sum(I)

Ipower = ones(n, 1);
Itemp = zeros(n, 1);

Niteration =0;


e=ones(n,1);
while max(abs(Itemp-Ipower)) > 1.0e-3
Niteration = Niteration+1;
Itemp=Ipower;
Ipower=alpha*S*Itemp+(1-alpha)/n*(e*e')*Itemp;
end

Niteration
Ipower

end

