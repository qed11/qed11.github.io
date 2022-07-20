clear;
global n tol
n = 9;
tol = 1e-7;

% compute target s value
mu_true = 1e-4 + (1e-1 - 1e-4)*rand;
u_true = fem_nonlin(n, mu_true, tol);

% global integration matrix
global g
[w, phi] = gmat(n);
g = w' * phi;
% global target s value
global strue
strue = 1 - g * u_true;


options = optimoptions(@fminunc,'Algorithm', 'trust-region', ...
                    'SpecifyObjectiveGradient',true, 'OptimalityTolerance',1e-8, 'StepTolerance', 1e-8);

% optimization code
mu = 1;
tic
while mu < 1e-4 || mu > 0.1
    mu0 = 1e-4 + (1e-1 - 1e-4)*rand; 
    [mu, flag, exflg] = fminunc(@des_out, mu0, options);
end
toc

% observation: takes significantly longer than linear problem because
% Newton's iterative method.
fprintf("mu = %.7f, true mu = %.7f\n", mu, mu_true)

% definition of function that returns both J and dJ/dmu at given mu value.
% this uses adjoint optimization
function [J, dJ] = des_out(mu)
    global n tol strue g
    u = fem_nonlin(n, mu, tol);
    J = (strue - 1 + g*u)^2;
    dJ = Jmu(strue, n, mu);
end
