mu = 0.01;
tic
[u, du] = FEM(50, mu);
toc 
x = linspace(0, 1, size(u, 1))';
figure
scatter(x, u)
hold on
x = linspace(0, 1, 40);
plot(x, u_true(x, mu))
hold off
xlabel('\(x\)', 'Interpreter','latex')
ylabel('\(u(x; \mu)\)', 'Interpreter','latex')
title(sprintf("Finite Element method on reaction-diffusion model, \\(\\mu = %f \\) ", mu), "Interpreter","latex")
legend("Ground Truth", "FEM estimation", 'Location', '')
saveas(gcf, "fem.png")
saveas(gcf, "fem.pdf")
