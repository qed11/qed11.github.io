dof = 2304 * 4.^[0 1 2 3];
optim = [0.0178 0.001046 0.000186 9.81e-5];
param = [8.14e-2 1.05e-2 3.211e-3 4.84e-3];

figure
loglog(dof, optim)
hold on
loglog(dof, param)
loglog(dof, 10*sqrt(1./(100.*dof)),"-.")
loglog(dof, 10./dof,"-.")
loglog(dof, 1e5./dof.^2,"-.")
title("Error convergence rate on uniformly spaced mesh, p = 1")
xlabel("Degrees of Freedom")
ylabel("Error")
legend("Pressure Matching Error", "Parameter Error Norm","Square Root Convergence", "Linear Convergence","Quadratic Convergence", "Location","best")
saveas(gcf, "uniform_mesh_figures/error_conv_p1.pdf")