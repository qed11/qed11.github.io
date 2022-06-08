function u_true = u_true(x, mu)
%TRUE Summary of this function goes here
%   Detailed explanation goes here
u_true = (exp(1/sqrt(mu)) - exp((1 - x)./sqrt(mu)) - ...
    exp(x./sqrt(mu)) + 1)./(exp(1/sqrt(mu)) + 1);

end

