function dJ = dJdmu(starget, n, mu)
setup

u = fem_p2(n , mu);
u = u(2:end - 1);

[w, phi] = gmat(n);
g = w' * phi;
dRu = dRdu(n, mu);
dRmu = dRdmu(u , n);

dqdu = 2*abs(starget - 1 + g * u) * g;

psi = dRu' \ dqdu';

dJ = -psi' * dRmu;

end