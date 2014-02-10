function [rankRed,ranknewRed]= compress(filename, newrank)
% filename holds the name of the image file 'figure_to_compress.jpg' in this mp. 
% newrank is an integer value. newrank is the count of the largest singular values we
% will keep when using the svds function.
% The output variables, rankRed,ranknewRed will contain the rank of
% the Red and modified Red matrices that you will need to determine.

% close all previously opened figure windows
close all

% clear the command window
clc

% display the picture in a figure window
imshow(filename)

% open new figure window
figure

% initialize  variables
rankRed = 0;
ranknewRed = 0;

%Write your code for the Implementation of Part 1  of the MP 2 below this comment.





% last line of code
 imwrite(RGB,['svd',num2str(newrank),'.jpg']);