mu_true = 0.0120;
disp(mu_true)
ftrue = @(x) 1 - u_true(x, mu_true);
starget = composite_gauss2(ftrue, 0 , 1 , 10);

mu_test = linspace(1e-4, 1e-1, 100);

fin = @(mu) finite_diff(starget, mu, 1e-7);
dJ_fin = arrayfun(fin, mu_test);

adj = @(mu) dJdmu(starget, 7, mu);
dJ_adj = arrayfun(adj, mu_test);

plot(mu_test, dJ_fin, mu_test, dJ_adj)
legend("Finite Diff", "Adjoint")
filename = sprintf('figs/test_%.5f.pdf',mu_true);
saveas(gcf,filename)