clear
global starget n

mu_true = 1e-4 + (1e-1 - 1e-4)*rand;
ftrue = @(x) 1 - u_true(x, mu_true);
starget = composite_gauss2(ftrue, 0 , 1 , 10);
n = 50;
options = optimoptions(@fminunc,'Display','iter', ...
                   'OptimalityTolerance',1e-8, 'StepTolerance', 1e-8);
tic
[mu, flag, exflg, output]  = fminunc(@des_out, 0.05, options);
toc

fprintf("mu = %.7f, true mu = %.7f\n", mu, mu_true)


function J = des_out(mu)
    global n starget
    
    [~, fu, ~] = fem_p2(n, mu);
    s = s_composite(fu, 0, 1);
    J = (starget - s)^2;
    
end
