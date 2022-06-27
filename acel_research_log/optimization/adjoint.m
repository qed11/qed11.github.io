function adjoint
mu_true = 1e-4 + (1e-1 - 1e-4)*rand;
ftrue = @(x) 1 - u_true(x, mu_true);
starget = composite_gauss2(ftrue, 0 , 1 , 10);
err_min = 1;
mu_test = 0;


disp([mu_true, mu_test])
end