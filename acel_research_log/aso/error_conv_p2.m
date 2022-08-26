dof = 4608 * 4.^[0 1 2 3];
optim = [7.919e-4 2.0889e-4 7.652e-5 3.464e-5];
param = [6.57e-3 6.485e-4 3.234e-4 1.402e-4];

figure
loglog(dof, optim)
hold on
loglog(dof, param)
loglog(dof, sqrt(1./(100.*dof)),"-.")
loglog(dof, 5./dof,"-.")
title("Error convergence rate on uniformly spaced mesh")
xlabel("Degrees of Freedom")
ylabel("Error")
legend("Pressure Matching Error", "Parameter Error Norm","Square Root Convergence", "Linear Convergence", "Location","best")
saveas(gcf, "uniform_mesh_result/error_conv_p2.pdf")