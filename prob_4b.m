
taylor_sin(1, 5)% scalar input

taylor_sin([1 2 3], 5) % array input 

taylor_sin([1 2 3;1 2 3], 5) % matrix input


function S = taylor_sin(x, n)

% Initialize the output matrix
S = zeros(size(x));

% Compute the Taylor series approximation
for k = 0:n-1
    S = S + (-1)^k .* x.^(2*k+1) ./ factorial(2*k+1);
end

end
