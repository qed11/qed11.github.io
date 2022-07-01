clear
mu_true = 1e-4 + (1e-1 - 1e-4)*rand;
disp(mu_true)
ftrue = @(x) 1 - u_true(x, mu_true);
global n starget
starget = composite_gauss2(ftrue, 0 , 1 , 10);
n = 50;
options = optimoptions(@fminunc,'Algorithm','trust-region',...
    'SpecifyObjectiveGradient',true);
tic
[mu, flag] = fminunc(@des_out, 0.05, options);
toc

fprintf("mu = %.7f, true mu = %.7f\n", mu, mu_true)

function [J, dJ] = des_out(mu)
    global n starget
    [~, fu, ~] = fem_p2(n, mu);
    s = s_composite(fu, 0, 1);
    J = (starget - s)^2;
    tic
    dJ = dJdmu(starget, n, mu);
    toc
end
