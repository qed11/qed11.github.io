function error_1d
clear
n = 8;
err = zeros(n, 2);
err_trapz = zeros(size(err));
dof = zeros(n, 1);
mu = 1/100;
for i = 1:8
    dof(i) = 2^i;
    [u, du, fu, dfu] = FEM(2^i, mu);
    
    %Following done via Gauss Quadrature:
    l2 = l2norm(fu, 0, 1, @u_true);
    h1 = l2 + l2norm(dfu, 0, 1, @du_true);
    
    err(i, 1) = sqrt(l2);
    err(i, 2) = sqrt(h1);


    %Comparison to trapz: ===============
    %error between solution
    x = linspace(0, 1 , size(u, 1))';
    uu = u_true(x, mu);
    e = uu - u;      
    l2 = trapz(x, e.^2);
    
    %error between derivative
    x = linspace(0, 1, size(du, 1))';
    duu = du_true(x, mu);
    grad = duu - du;
    h1 = l2 + trapz(x, grad.^2);
    
    err_trapz(i, 1) = sqrt(l2);
    err_trapz(i, 2) = sqrt(h1);
    %=====================================

end
figure
loglog(dof, err(:, 1))
hold on
loglog(dof, err(:, 2))
loglog(dof, err_trapz(:, 1))
loglog(dof, err_trapz(:, 2))
hold off
legend("L2, Gauss", "H1, Gauss", "L2, Trap", "H1, Trap")
end
