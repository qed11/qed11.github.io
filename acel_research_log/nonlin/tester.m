n = 9;
tol = 1e-7;

mu_true = 1e-4 + (1e-1 - 1e-4)*rand;
u_true = fem_nonlin(n, mu_true, tol);

[w, phi] = gmat(n);
g = w' * phi;

strue = g * u_true;

mu_test = linspace(1e-4, 1e-1, 100);

tic
f1 = @(mu) fin_diff(strue, mu, 1e-7);
dJ1 = arrayfun(f1, mu_test);
f2 = @(mu) Jmu(strue, n, mu);
dJ2 = arrayfun(f2, mu_test);
toc

plot(mu_test, dJ1, mu_test, dJ2)
txt = sprintf("mu_true = %.5f", mu_true);
title(txt)
legend("finite difference","adjoint", "location", "best")

filename = sprintf("figs/err_%.5f.pdf", mu_true);
saveas(gcf, filename)