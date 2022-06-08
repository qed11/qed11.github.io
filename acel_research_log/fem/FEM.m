function [u, du, fu, fdu] = FEM(n, mu)
% u: vector of nodal values of linearly approximated FEM
% du: vector of nodal values of derivatives of linear functions in each
% segment
% fu: vector of piecewise continuous functions of the FE approximation
% fdu: vector of piecewise continuous functions of the derivative
    h = 1/(n+1);
    e = ones(n,1);
    A1 = mu/h * spdiags([-e 2*e -e],-1:1,n,n);
    A2 = h/6 * spdiags([e 4*e e],-1:1,n,n);
    A = A1 + A2;
    L = h*e;
    u = A\L;
    u = [0 u' 0]';

    du = (u(2:end) - u(1:end-1))/h;
    
    xx = linspace(0, 1, n+2);
   
    for i = 1:n+1
        fu{i} = @(x) u(i) + (u(i+1) - u(i))/h * (x - xx(i));
        fdu{i} = @(x) (u(i+1) - u(i))/h;
    end
    fu = fu';
    fdu = fdu';
end

