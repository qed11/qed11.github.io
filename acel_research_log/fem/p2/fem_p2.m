function [u, fu, fdu] = fem_p2(n, mu)
% u: vector of nodal values of linearly approximated FEM
% fu: vector of piecewise continuous functions of the FE approximation
% fdu: vector of piecewise continuous functions of the derivative
    

    h = 1/(n+1);    
    n = 2*n + 1;
    e = ones(n,1);
    Bin = (4 + 4*mod(1:n, 2))';
    A1 = h/15*spdiags([e Bin e],-1:1,n,n);

    Bin2 = (7 + mod(1:n, 2))';
    A2 = 2*mu/3* spdiags([-4*e, Bin2, -4*e], -1:1, n, n);

    A = A1 + A2;
    L = h/3*(1 + mod(1:n, 2))';
    u = A\L;
    u = [0; u; 0];
    xx = linspace(0, 1, n+2);
   
    for i = 1:2:n+1
        disp([u(i) u(i+1) u(i+2)])
        fu{(i+1)/2} = @(x) (u(i) * 2 * (x - xx(i+1)) .*(x - xx(i+2)) ...
                          + u(i+1) * (-4) .* (x - xx(i)).*(x - xx(i+2)) ...
                          + u(i+2) * 2 * (x - xx(i)) .*(x - xx(i+1)))/h^2;
        fdu{(i+1)/2} = 0;
    end
    fu = fu';
    fdu = fdu';
end

