topLevelFolder = strcat(pwd, '/soln');
files = dir(topLevelFolder);
figure
set(gca, 'yscale', 'log')
xlim([2,15])
hold on
for i = 3:11
    T = readtable(strcat('soln/',files(i).name));
    semilogy(T{:, 1}, abs(T{:, 3}))
end
 

