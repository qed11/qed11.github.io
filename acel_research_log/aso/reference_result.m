topLevelFolder = strcat(pwd, '/ref');
files = dir(topLevelFolder);
figure
set(gca,'xscale','log', 'yscale', 'log')
hold on
for i = 3:12
    T = readtable(strcat('ref/',files(i).name));
    loglog(T{:, 1}, T{:, 4})
    
end
hold off
xlabel("Degrees of Freedom")
ylabel("Error")
title("Error Estimation in Reference Solution")
legend(files(3:12).name, "Interpreter","none", "location", "best")

saveas(gcf, "ref/reference_result.png")
 

