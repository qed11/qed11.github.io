function grad_free
tic
mu_true = 1e-4 + (1e-1 - 1e-4)*rand;
ftrue = @(x) 1 - u_true(x, mu_true);
starget = composite_gauss2(ftrue, 0 , 1 , 10);
err_min = 1;
mu_test = 0;

for mu = linspace(1e-4, 1e-1, 1000)
    [~, fu, ~] = fem_p2(25, mu);
    s = s_composite(fu, 0, 1);
    err = (starget - s)^2;
    if err < err_min
        err_min = err;
        mu_test = mu;
    end
end
disp([mu_true, mu_test])
toc
end