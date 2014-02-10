function I = PageRank( H, alpha )
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
Id = speye(n)
e = ones(n,1)
I = (Id -alpha*S)\e

I = I/sum(I)


end

