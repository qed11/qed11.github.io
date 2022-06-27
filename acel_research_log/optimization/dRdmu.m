function dR = dRdmu(u, n)
%DRDU Summary of this function goes here
%   Detailed explanation goes here
    
    h = 1/(n+1);    
    n = 2*n + 1;
    e = ones(n,1);
    mid = (8 + 8*mod(1:n, 2))';
    outer = - mod(2:n+1, 2)';
    A1 = h/30*spdiags([outer 2*e mid 2*e outer],-2:2,n,n);
    dR = [0; A1 * u(2:end-1); 0];

end

