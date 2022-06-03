function du_true = du_true(x, mu)
%DU Summary of this function goes here
%   Detailed explanation goes here
du_true = (exp(-x./sqrt(mu)) .* (exp(1/sqrt(mu)) - exp((2.*x)/sqrt(mu)))) ...
            ./((1 + exp(1/sqrt(mu))).*sqrt(mu));
end

