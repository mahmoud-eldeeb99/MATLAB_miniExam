% we can use logical indexing
M = rand(100,200);
M(M < 0.5) = NaN;

M
