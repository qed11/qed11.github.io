function dJ = finite_diff(strue, mu, dmu)
    [~, fu, ~] = fem_p2(10, mu - dmu);
    s1 = s_composite(fu, 0, 1);
    J1 = (strue - s1)^2;
    [~, fu, ~] = fem_p2(10, mu + dmu);
    s2 = s_composite(fu, 0, 1);
    J2 = (strue - s2)^2;
    dJ = (J2 - J1) / 2*dmu;
end