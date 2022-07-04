function L = lmat(n)
%LMAT Summary of this function goes here
%   Detailed explanation goes here
    h = 1/(n+1);
    L = h/3*(1 + mod(1:n, 2))';
end

