n = 100;
mu = 0.01;
u = FEM(mu, n);
uu = plotter(u, n);
x = linspace(0, 1, 9*(n+1) + 1);
plot(x, uu)
xlabel("\(x\)", "Interpreter","latex")
ylabel("\(u(x; \mu)\)", "Interpreter","latex")
title("Finite element method on reaction-diffusion equation")