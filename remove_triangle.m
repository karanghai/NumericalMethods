function remove_triangle(x,y,tolerance)
%function remove_triangle(x,y,tolerance)
% This is a function to recursively remove smaller and smaller upside-down triangles

% if triangle too small just quit
if( abs(x(1)-x(3))+abs(y(1)-y(2)) < tolerance ) %changed
    return;
else
    % calculate the points of the upside-down triangle
    xr = [(x(1)+x(2))/2 (x(1)+x(3))/2 (x(2)+x(3))/2];
    yr = [(y(1)+y(2))/2 (y(1)+y(3))/2 (y(2)+y(3))/2];
   
    
    fill(xr,yr,'w');   % remove our new triangle by coloring it white

    pause(.5);         % added to slow things down so we can see what's going on...

    %make recursive calls on each of our new (smaller) red triangles
    remove_triangle([x(1) xr(1) x(2)],[y(1) yr(1) y(1)],tolerance);
    remove_triangle([xr(1) x(2) xr(3)],[yr(1) y(2) yr(3)],tolerance);
    remove_triangle([x(2) xr(3) x(3)],[y(3) yr(3) y(3)],tolerance);
end