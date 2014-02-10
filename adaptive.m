function area = adaptive(fcn, a, b,N,axis_vec,tol)
% function area = adaptive(fcn, a, b,N,axis_vec,tol)
% Integrate the function y = fcn(x) on the interval [a,b] using N points and the trapezoidal rule.
% axis_vec is a vector [xmin xmax ymin ymax] that sets the size of the graph in the figure window.

hold on
x = linspace(a, b, N);
y = feval(fcn, x);
x2= [a,x,b];
y2 =[0,y,0];
fill(x2,y2,'g')   % the fill command fills a polygon in the plane. The closed region contains the points (a,0) and (b,0)                               
% 'g' stands for green

axis(axis_vec)
pause(.3)
A = trapz (x, y);   % compute the Area using the trapezoidal formula
x = linspace(a, (a + b)./2, N);
y = feval(fcn, x);
AL = trapz(x, y);  % compute the area on the left half of the interval.
x = linspace((a+b)./2, b, N);
y = feval(fcn, x);
AR = trapz(x, y); % compute the area on the right half of the interval
if abs(((AR + AL)-A)) < tol  % if close enough done so assign output variable 'area' and fill the area in with red
    area = AR+AL;% assign correct value to area
    fill(x2,y2,'r')
    axis(axis_vec)
else        % else we haven't satisifed the tolerance set by the user so            %compute the area of the left half and add the area computed by the right %half.  Fill in the blanks with recursive calls. You will have two calls to %the function adaptive.  
    area = adaptive(fcn,a,(a+b)/2,N,axis_vec,tol)+adaptive(fcn,(a+b)/2,b,N,axis_vec,tol); % use recursion to sum areas between a , (a+b)/2 and (a+b)/2 and b.
end
