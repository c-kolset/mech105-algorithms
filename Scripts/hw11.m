% Define problem constants
g = 9.81;
mu = 0.55;
F = 150;
m = 25;

% Define the function to be solved for. Is the angle specified in radians or degrees?
%angle=@(-asin(g/(sqrt(mu^2)))+atand(mu)+((4*n2+1)*pi)/2
func=@(angle) mu*m*g/(cosd(angle)+mu*sind(angle))-F;

% THINK, what makes range sense for angle?
lower_bound=-90;
upper_bound=90;

% Plot your function. Does plotting give you an idea about where the root is?
hold on
fplot(func)
fplot(0)

% Finaly solve for the root using the bisection script given to you, which can be called as:
%[root, fx, ea, iter] = bisect(func, lower_bound, upper_bound);

angle = bisect(func,lower_bound, upper_bound)

% These variables will be checked for your final answer:
%angle =  % the angle in degree that solves this problem
fx = func(angle)    % the function value at your solved angle
ea = ea    % the bisection error estimate
iter = iter   % the number of bisection iterations