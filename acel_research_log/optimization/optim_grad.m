clear;
setup;
mu_true = 1e-4 + (1e-1 - 1e-4)*rand;
disp(mu_true)
ftrue = @(x) 1 - u_true(x, mu_true);
global n starget
starget = composite_gauss2(ftrue, 0 , 1 , 10);
n = 9;

options = optimoptions(@fminunc,'Algorithm', 'trust-region', ...
                    'SpecifyObjectiveGradient',true, 'OptimalityTolerance',1e-8, 'StepTolerance', 1e-8);

mu0 = 1;
while mu0 < 1e-4 || mu0 > 0.1
    mu0 = 1e-4 + (1e-1 - 1e-4)*rand;
    tic
    [mu, flag, exflg] = fminunc(@des_out, mu0, options);
    if exflg == 5
        [mu, flag, exflg] = fminunc(@des_out, mu, options);
    end
end
toc

fprintf("mu = %.7f, true mu = %.7f\n", mu, mu_true)

function [J, dJ] = des_out(mu)
    global n starget
    [~, fu, ~] = fem_p2(n, mu);
    s = s_composite(fu, 0, 1);
    J = (starget - s)^2;
    dJ = dJdmu(starget, n, mu);
end
