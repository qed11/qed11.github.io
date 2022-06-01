function uu = plotter(u, n, num)
    %U is a vector
    x = linspace(0, 1, n+2)';
    h = 1/(n+1);
    uu = [0];
    for i = 1:n+1
        x_curr = linspace(x(i), x(i+1),num)';
        %{
        The following line is the key to the finite element method.
        it is a linear comibination of 2 nodes on the boundary
        of the segment.
        %}

        u_curr = u(i+1)/h * (x_curr - x(i)) + u(i) * (1-1/h * (x_curr - x(i)));
       
        p = u_curr(2:end, :);
        uu = [uu; p];
    end
end

