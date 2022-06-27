function dJ = dJdmu(starget, n, mu)
setup

u = fem_p2(n , mu);
u = u(2:end - 1);

g = gmat(n);
dRu = dRdu(n, mu);
dRmu = dRdmu(u , n);

dqdu = 2*abs(starget - 1 + g * u) * g;

psi = dRu' \ dqdu';

dJ = -psi' * dRmu;
