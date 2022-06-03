function [u, du] = FEM(n, mu)
% Compiling the coefficients of each node
    %This part is computing the coefficients of each node:
    h = 1/(n+1);
    e = ones(n,1);
    A1 = mu/h * spdiags([-e 2*e -e],-1:1,n,n);
    A2 = h/6 * spdiags([e 4*e e],-1:1,n,n);
    A = A1 + A2;
    L = h*e;
    u = A\L;
    u = [0 u' 0]';

    du = (u(2:end) - u(1:end-1))/h;

end

