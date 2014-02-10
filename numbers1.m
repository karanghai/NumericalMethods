function [arr] =numbers1(n)
arr=[];
for i=1:2:2*n,
    if mod(i,2)==1
    arr=[arr i];
    end
    
end

