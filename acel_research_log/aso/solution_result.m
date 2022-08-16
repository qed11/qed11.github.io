topLevelFolder = strcat(pwd, '/soln');
files = dir(topLevelFolder);
figure
set(gca, 'yscale', 'log')
xlim([0,15])
ylim([1e-6 1e-1])
hold on
for i = 3:11
    T = readtable(strcat('soln/',files(i).name));
    semilogy(T{:, 1}, abs(T{:, 3}))
end
legend(files(3:11).name, "Interpreter","none")

xlabel("Number of Iterations")
ylabel("Error")
title("Errors Between Reference and Computed Solution")

saveas(gcf, "soln/solution_result.pdf")

hold off

figure

for i = 3:11
    T = readtable(strcat('soln/',files(i).name));
    semilogy(T{:, 1}, abs(T{:, 5}))
    hold on
end
xlim([0, 20])
legend(files(3:11).name, "Interpreter","none", "Location","best")

xlabel("Number of Iterations")
ylabel("KKT Value")
title("KKT Value Of the Solution")

saveas(gcf, "soln/KKT_result.pdf")

