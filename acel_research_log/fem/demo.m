mu = 0.01;
[u, du] = FEM(50, mu);
x = linspace(0, 1, size(u, 1))';
figure
scatter(x, u)
hold on
plot(x, u_true(x, mu))
hold off

dutrue = du_true(x, mu);
plot(du)