topLevelFolder = 'result_aug_22/';
files = dir(strcat(topLevelFolder, "ref/"));
figure
set(gca,'xscale','log', 'yscale', 'log')
hold on
for i = 3:5
    T = readtable(strcat(topLevelFolder,"ref/",files(i).name));
    loglog(T{:, 1}, T{:, 4})
    
end
hold off
xlabel("Degrees of Freedom")
ylabel("Error")
title("Error Estimation in Reference Solution")
legend(files(3:end).name, "Interpreter","none", "location", "best")

saveas(gcf, strcat(topLevelFolder, "reference_result.png"))
 

