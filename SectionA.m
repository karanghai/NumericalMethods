function [ ] = SectionA( )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
H=[ 0 0 0 0 0 0 1/3 0;1/2 0 1/2 1/3 0 0 0 0;1/2 0 0 0 0 0 0 0;0 1 0 0 0 0 0 0; 0 0 1/2 1/3 0 0 1/3 0;
    0 0 0 1/3 1/3 0 0 1/2;0 0 0 0 1/3 0 0 1/2;0 0 0 0 1/3 1 1/3 0]
[V,D] = eig(H)

total = sum(V(:,1))

V = V/total;
V(:,1)

sum(V(:,1))


end

