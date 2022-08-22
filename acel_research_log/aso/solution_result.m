topLevelFolder = 'result_round_2/soln/';
files = dir(topLevelFolder);
figure
set(gca, 'yscale', 'log')
xlim([0, 20])
hold on
for i = 3:9
    T = readtable(strcat(topLevelFolder,'/',files(i).name));
    semilogy(T{:, 1}, abs(T{:, 3}))
end
legend(files(3:9).name, "Interpreter","none")

xlabel("Number of Iterations")
ylabel("Error")
title("Errors Between Reference and Computed Solution")

saveas(gcf, "solution_result.pdf")

hold off

figure
for i = 3:9
    T = readtable(strcat(topLevelFolder,files(i).name));
    semilogy(T{:, 1}, abs(T{:, 5}))
    hold on
end
xlim([0, 20])
legend(files(3:9).name, "Interpreter","none", "Location","best")

xlabel("Number of Iterations")
ylabel("KKT Value")
title("KKT Value Of the Solution")

saveas(gcf, "KKT_result.pdf")

