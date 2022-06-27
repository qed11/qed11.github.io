u = fem_p2(3, 0.01);

g = gmat(3, 0.01);

g * u

gg = gmat_new(3)
gg * u(2:end-1)