function [t,y] = Heun(dydt,tspan,y0,h,es,maxit)
% [t,y] = Heun(dydt,tspan,y0,h): uses the heun method to integrate an ODE
% inputs:
%	dydt = the differential equation of interest (must be anonymous
%		function)
%	tspan = [ti,tf] the initial and final values of the independent
%		variable
%	y0 = the initial value of the dependent variable
%	h = step size
%	es = stopping criterion (%), optional (default = 0.001)
%	maxit = maximum iterations of corrector, optional (default = 50)
% outputs:
%	t = vector of independent variable values
%	y = vector of solution for dependent variable  

%Error checking
if nargin<4, error('At least 4 aruments required.');end
if nargin<5|isempty(es), es = 0.001;end
if nargin<6|isempty(maxit), maxit = 50;end
if length(tspan)~=2, error('Argument tspan must have a length of 2');end 

%Trims tspan according to step size (h)
t=tspan(1):h:tspan(2);
%if rem(tspan(2),h)~=0
if t(length(t))~=tspan(2)
    t=[t,tspan(end)];
end

y=ones(1,length(t))*y0;
h=diff(t);

for i=1:length(t)-1
	S=dydt(t(i),y(i));
	ynew=y(i)+S*h;
	for j=1:maxit
		yold=ynew;
		ynew=y(i)+h(i)/2*(S+dydt(t(i+1),yold));
		ea = abs((ynew-yold)/ynew)*100;
		if ea <= es, break, end
	end
	y(i+1)=ynew;
end
plot(t,y)
end