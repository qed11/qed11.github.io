function du = du_fem(u1, u2, x1, x2)
%DU_FEM Summary of this function goes here
%   Detailed explanation goes here
   du = (u2 - u1)/(x2 - x1);
end

