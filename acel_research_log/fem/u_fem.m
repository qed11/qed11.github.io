function u = u_fem(x, u1, u2, x1, x2)
    u = u1 + (u2-u1)/(x2 - x1) * (x - x1);
end

