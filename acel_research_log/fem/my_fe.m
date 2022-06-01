function [uu, u_true] = my_fe(n, mu, num)
u = FEM(mu, n);
uu = plotter(u, n, num);
x = linspace(0, 1, (num-1)*(n+1) + 1);

u_true = (exp(1/sqrt(mu)) - exp((1 - x)./sqrt(mu)) - ...
    exp(x./sqrt(mu)) + 1)./(exp(1/sqrt(mu)) + 1);
scatter(x, uu) 
hold on
plot(x, u_true)
hold off
xlabel("\(x\)", "Interpreter","latex")
ylabel("\(u(x; \mu)\)", "Interpreter","latex")
title(sprintf("Finite element method on reaction-diffusion equation, \\(\\mu = \\) %f", mu), "Interpreter", "latex")
legend("Finite Element", "True Solution", "Location","best")
%saveas(gcf, "reaction-diffusion.pdf")
end