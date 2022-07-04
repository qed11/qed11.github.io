function dJ = dJdmu(starget, n, mu)
    u = fem_p2(n , mu);
    
    [w, phi] = gmat(n);
    g = w' * phi;

    dRu = dRdu(mu, n);
    dRmu = dRdmu(u, n);
    
    dqdu = 2*(starget - 1 + g * u) * g;
    
    psi = dRu' \ dqdu';
    
    dJ = -psi' * dRmu;

end