mu = 0.01;
tic
[u, du] = FEM(50, mu);
toc 
x = linspace(0, 1, size(u, 1))';
figure
scatter(x, u)
hold on
plot(x, u_true(x, mu))
hold off

