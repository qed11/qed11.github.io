n = 50;
mu = 0.01;


[u, fu, dfu] = fem_p2(n, mu);
x = linspace(0, 1, size(u, 1) + 2);

figure
plot(x, [0;u;0]);
hold on
u_nonlin = fem_nonlin(n, mu, 1e-7);
plot(x, [0; u_nonlin; 0])
legend("linear", "nonlinear", "location", "best")

[ww, phi] = gmat(n);
g = ww' * phi;

s = g * u_nonlin;