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
 

