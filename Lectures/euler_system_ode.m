function [x, y] = euler_system_ode(f, x_0, y_0, h, steps)
    x = x_0 + h * [0:steps];
    y(:,1) = y_0;
    for i = 2:steps+1
        y(:,i) = y(:,i-1) + h * f(x(i-1), y(:,i-1));
    end
end