n = 8;
err = zeros(n, 2);
dof = zeros(n, 1);
for i = 1:10
    dof(i) = 2^i;
    [uu, utrue] = my_fe(2^i, 0.01);
    x = linspace(0, 1, size(uu, 1));
    e = uu - utrue';
    grad = gradient(e);
    l2 = trapz(x, e.^2);
    h1 = l2 + trapz(x, grad.^2);
    err(i, 1) = sqrt(l2);
    err(i, 2) = sqrt(h1);
end
figure
loglog(dof, err(:, 1))
hold on
loglog(dof, err(:, 2))
hold off