function gasket(x, y, tolerance)
% function to draw the Sierpinski Gasket
% x is a vector of the left base, top, and right base x coordinates of the biggest triangle
% y is a vector of the left base, top, and right base y coordinates of the biggest triangle
% tolerance is a scalar tolerance.  if the base plus the height is smaller than this, quit

clf;                                %clear the figure window
hold on;
fill(x,y,'r');                      %color in the big triangle in red
title('The Sierpinski Gasket');
remove_triangle(x,y, tolerance);    %make the call to our recursive removal function
hold off;