mu = 0.01;
[u, du] = FEM(mu, 50);
x = linspace(0, 1, size(u, 1))';
figure
scatter(x, u)
hold on
plot(x, utrue)
hold off
figure
x = linspace(0, 1, size(du, 1))';
plot(x, du,x, dutrue)