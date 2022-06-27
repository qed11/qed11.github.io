clear
mu_true = 1e-4 + (1e-1 - 1e-4)*rand;
ftrue = @(x) 1 - u_true(x, mu_true);
starget = composite_gauss2(ftrue, 0 , 1 , 10);
mu = 0.01;
n = 4;

u = fem_p2(n , mu);

g = gmat(n , mu);
dRdu = dRdu(n, mu);
dRdmu = dRdmu(u , n);

dqdu = 2*abs(starget - 1 + g * u) * g;

size(dRdu)
size(dqdu)

psi = dRdu' \ dqdu';

dJ = -psi' * dRdmu;