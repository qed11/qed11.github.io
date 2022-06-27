function dR = dRdu(n, mu)
%   DRDU Summary of this function goes here
%   Detailed explanation goes here
    h = 1/(n+1);    
    n = 2*n + 1;
    e = ones(n,1);
    mid = (8 + 8*mod(1:n, 2))';
    outer = - mod(2:n+1, 2)';
    A1 = h/30*spdiags([outer 2*e mid 2*e outer],-2:2,n,n);

    Bin2 = (14 + 2*mod(1:n, 2))';
    outer = mod(2:n+1, 2)';
    A2 = 1/(3*h)* spdiags([outer -8*e, Bin2, -8*e outer], -2:2, n, n);

    dR = A1 + mu * A2;

end

