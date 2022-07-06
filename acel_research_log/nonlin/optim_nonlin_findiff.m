clear;
global n tol
n = 9;
tol = 1e-7;

mu_true = 1e-4 + (1e-1 - 1e-4)*rand;
u_true = fem_nonlin(n, mu_true, tol);


global g
[w, phi] = gmat(n);
g = w' * phi;


global strue
strue = 1 - g * u_true;


options = optimoptions(@fminunc,'Algorithm', 'trust-region', ...
                    'SpecifyObjectiveGradient',true, 'OptimalityTolerance',1e-8, 'StepTolerance', 1e-8);

tic
mu0 = 1e-4 + (1e-1 - 1e-4)*rand; 
[mu, flag, exflg] = fminunc(@des_out, mu0, options);
toc

fprintf("mu = %.7f, true mu = %.7f\n", mu, mu_true)

function [J, dJ] = des_out(mu)
    global n tol strue g
    u = fem_nonlin(n, mu, tol);

    J = (strue - 1 + g*u)^2;
    dJ = fin_diff(strue, mu, 1e-7);
end
