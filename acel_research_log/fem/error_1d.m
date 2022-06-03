clear
n = 8;
err = zeros(n, 2);
dof = zeros(n, 1);
mu = 1/100;
for i = 1:10
    dof(i) = 2^i;
    [u, du] = FEM(2^i, mu);
    x = linspace(0, 1, size(u, 1))';
    utrue = u_true(x, mu);
    e = u - utrue;
    
    %Implement G-K method to it
    l2 = trapz(x, e.^2);
    
    x = linspace(0, 1, size(du, 1))';
    dutrue = du_true(x, mu);
    grad = du - dutrue;
    h1 = l2 + trapz(x, grad.^2);

    err(i, 1) = sqrt(l2);
    err(i, 2) = sqrt(h1);
end
figure
loglog(dof, err(:, 1))
hold on
loglog(dof, err(:, 2))
hold off