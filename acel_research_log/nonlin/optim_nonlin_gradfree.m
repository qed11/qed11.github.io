clear;
global n tol
n = 50;
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

options = optimoptions(@fminunc,'Display','iter', ...
                   'OptimalityTolerance',1e-8, 'StepTolerance', 1e-8);
tic

% optimization code
mu = 1;

[mu, flag, exflg, output]  = fminunc(@des, 0.05, options);

fprintf("mu = %.8f, true mu = %.8f\n", mu, mu_true)

toc

function J = des(mu)
    
    global n tol strue g
    u = fem_nonlin(n, mu, tol);
    J = (strue - 1 + g*u)^2;
    
end
