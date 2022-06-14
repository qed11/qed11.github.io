function [u, fu, fdu] = fem_p2(n, mu)
% u: vector of nodal values of linearly approximated FEM
% fu: vector of piecewise continuous functions of the FE approximation
% fdu: vector of piecewise continuous functions of the derivative
    h = 1/(n+1);    
    n = 2*n + 1;
    e = ones(n,1);
    mid = (8 + 8*mod(1:n, 2))';
    outer = - mod(2:n+1, 2)';
    A1 = h/30*spdiags([outer 2*e mid 2*e outer],-2:2,n,n);

    Bin2 = (14 + 2*mod(1:n, 2))';
    outer = mod(2:n+1, 2)';
    A2 = mu/(3*h)* spdiags([outer -8*e, Bin2, -8*e outer], -2:2, n, n);

    A = A1 + A2;
    L = h/3*(1 + mod(1:n, 2))';
    u = A\L;
    u = [0; u; 0];
    xx = linspace(0, 1, n+2);
   
    for i = 1:2:n+1
        fu{(i+1)/2} = @(x) (u(i) * 2 * (x - xx(i+1)) .*(x - xx(i+2)) ...
                          - u(i+1) * 4 .* (x - xx(i)).*(x - xx(i+2)) ...
                          + u(i+2) * 2 * (x - xx(i)) .*(x - xx(i+1)))/h^2;
        fdu{(i+1)/2} = 0;
    end
    fu = fu';
    fdu = fdu';
end

