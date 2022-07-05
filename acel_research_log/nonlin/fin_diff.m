function dJ = fin_diff(strue, mu, dmu)
    n = 10; tol = 1e-5;
    u1 = fem_nonlin(n, mu - dmu, tol);
    u2 = fem_nonlin(n, mu + dmu, tol);

    [w, phi] = gmat(n);

    g = w' * phi;

    s1 = 1 - g * u1;
    s2 = 1 - g * u2;

    J1 = (strue - s1)^2;
    J2 = (strue - s2)^2;

    dJ = (J2 - J1)/(2*dmu);
end