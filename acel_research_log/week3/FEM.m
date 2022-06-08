function u = FEM(mu, n)
    h = 1/(n+1);
    e = ones(n,1);
    A1 = mu/h * spdiags([-e 2*e -e],-1:1,n,n);
    A2 = h/6 * spdiags([e 4*e e],-1:1,n,n);
    A = A1 + A2;
    L = h*e;
    u = A\L;
    u = [0 u' 0]';
end

