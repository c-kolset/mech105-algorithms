function [I] = Simpson(x, y)
% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable
%   y = the vector of function values with respect to x
% Outputs:
%   I = the numerical integral calculated

%Error cheching
if length(x)~=length(y), error('The vectors need to be of equal lengths'),end
if length(x)==1, error('Vectors must be at least 2 data points long'),end
if range(x(2:end)-x(1:end-1))~=0, error('The x vector needs to be equally spaced'), end
%Error  Errorchecking END

lower_bound=min(x);
interval=length(x)-1;
if rem(interval,2)==0
	trap_rule=0;
	upper_bound=max(x);
else 
	warning('Odd number of intervals. Applying Trapezoidal rule on last interval')
	trap_rule=1;
	upper_bound=x(end-1);
end

if length(x)==2
	I=(upper_bound-lower_bound)*(y(1)+y(2))/2;
else
	h=(upper_bound-lower_bound)/interval;
	SumOdd=sum(y(1:2:end))-y(end-1);
	SumEven=sum(y(2:2:end))-y(end-2);
	I=(upper_bound-lower_bound)*(y(1)+4*SumOdd+2*SumEven+y(end))/(3*interval);
end

if trap_rule==1 & length(x)~=2
	I_trap=(max(x)-upper_bound)*(y(upper_bound)+y(max(x)))/2;
	I=I+I_trap;
end
end