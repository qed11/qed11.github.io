n = 50;
mu = 0.01;


[u, fu, dfu] = fem_p2(n, mu);
x = linspace(0, 1, size(u, 1) + 2);
u_nonlin = fem_nonlin(n, mu, 1e-7);

figure
plot(x, [0;u;0]);
hold on
plot(x, [0; u_nonlin; 0])
legend("linear", "nonlinear", "location", "best")
title(sprintf("FE approximation on linear and nonlinear reaction - diffusion models, mu = %.5f", mu))
xlabel("\(x\)", "Interpreter","latex")
ylabel("\(u(x; \mu)\)","Interpreter","latex")
saveas(gcf, "figs/demo.pdf")
hold off
