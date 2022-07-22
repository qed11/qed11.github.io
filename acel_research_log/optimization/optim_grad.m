clear;

% compute true s value
mu_true = 1e-4 + (1e-1 - 1e-4)*rand;
disp(mu_true)
ftrue = @(x) 1 - u_true(x, mu_true);
global n starget
starget = composite_gauss2(ftrue, 0 , 1 , 10);

%set n value for dof
n = 50;

% use gradient
options = optimoptions(@fminunc,'Algorithm', 'trust-region', ...
                    'SpecifyObjectiveGradient',true, ...
                   'Display','iter', ...
                   'OptimalityTolerance',1e-8, 'StepTolerance', 1e-8);

%optimization
mu = 1;
tic
while mu < 1e-4 || mu > 0.1
    mu0 = 1e-4 + (1e-1 - 1e-4)*rand; 
    [mu, flag, exflg] = fminunc(@des_out, mu0, options);
end
toc

% an observation: when mu value close to the lower bound of the test
% domain, the result starts to have larger errors.

fprintf("mu = %.7f, true mu = %.7f\n", mu, mu_true)

function [J, dJ] = des_out(mu)
    global n starget
    [~, fu, ~] = fem_p2(n, mu);
    s = s_composite(fu, 0, 1);
    J = (starget - s)^2;
    dJ = dJdmu(starget, n, mu);
end
