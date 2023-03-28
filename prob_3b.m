
taylor_sin(pi/4, 4) % normal case 

taylor_sin(3*pi/2, 2) % warning case 

% taylor_sin(3*pi/2, 0) % error case 


function sin_approx = taylor_sin(phi, n)

if n < 1
    error('n must be greater than or equal to 1.');
end

if phi >= pi && n < 3
    warning('phi is greater than or equal to pi and n is less than 3.');
end

% Compute the Taylor series approximation
sin_approx = 0;
for k = 0:n-1
    sin_approx = sin_approx + ((-1)^k / factorial(2*k+1)) * phi^(2*k+1);
end
end