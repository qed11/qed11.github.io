%using newton's method to root find
n = 50;
mu = 0.1;
tol = 1e-7;

figure
u = fem_p2(n, mu);
x = linspace(0, 1, size(u, 1) + 2);
plot(x, [0; u; 0])
hold on
while true
    [r, J] = res(n, mu, u);
    du = J\(-r);
    u = u + du;
    if norm(r) < tol
        break
    end

end

u = [0; u; 0];
plot(x, u)
hold off
legend("linear", "nonlinear", "location", "best")