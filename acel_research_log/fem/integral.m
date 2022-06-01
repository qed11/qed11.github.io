[uu, utrue] = DEMO(100, 0.001);

x = linspace(0, 1, size(uu, 1));

s = trapz(x, 1- uu)
strue = trapz(x, 1- utrue)