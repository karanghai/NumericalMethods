function root = newtoni(f, guess, tol, display)
 %function root = newtoni(f,guess, tol, display)
 %where f is the function, f: R -> R.
 %df is the derivative of the function
 %guess is an approximation of the root and is a scalar value
 %tol specifies that the search will iterate until  | f(xk)| < tol. You may assume that tol > 0.
 %display has the value 1  or 0, 1 means display the values of the individual iterations, 0 means don't display
 %if the user doesn't submit a value for the fifth argument then the default value is display = 0.
 h=1.0e-16;
 iteration = 1;
  x(iteration) = guess;
 if nargin == 3;
     display = 0;
 end

  if display
                disp('iteration          x(iteration)        abs(f( x(iteration) ))')
               % disp( [iteration ,x , error])  <=== where you use your own three variable names
  end
 while (abs(f(x(iteration)))>=tol && iteration<20)
   % disp('122');
     if display
          fprintf(' %5i   %25.17f %25.17f \n', iteration ,x(iteration) , abs(f(x(iteration))));
     end
      x(iteration+1) = x(iteration) - f(x(iteration))/imag(f(x(iteration)+(1i*h))/h);
     iteration = iteration + 1;
 end
 if iteration==20
     disp('no convergence');
 end
 
 if display
               % disp('iteration          x(iteration)        abs(f( x(iteration) ))')
               % disp( [iteration ,x , error])  <=== where you use your own three variable names
                fprintf(' %5i   %25.17f %25.17f \n', iteration ,x(iteration) , abs(f(x(iteration))));
  end
 
 root = x(iteration);
    
              