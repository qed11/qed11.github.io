function dJ = Jmu(starget, n, mu)
    u = fem_nonlin(n, mu, 1e-8); 
    
    [~, dRu] = res(n, mu, u);

    [w, phi] = gmat(n);
    g = w' * phi;

    dRmu = dRdmu(u, n);
    
    dqdu = 2*(starget - 1 + g * u) * g;
    
    psi = dRu' \ dqdu';
    
    dJ = -psi' * dRmu;
end