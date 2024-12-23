function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
%falsePosition finds the root of a function using false position method
%   Syntax:
%	[root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
%
%   Input:
%	func = function being evaluated
%	xl = lower guess
%	xu = upper guess
%	es = desired relative error (default 0.0001%)
%	maxit = maximum number of iterations (default 200)
%	varargin, ...= any additional parameters used by the function
%   Output:
%	root = estimated root location
%	fx = function evaluated at root location
%	ea = approximated relative error (%)
%	iter = number of iterations performed

if nargin < 3, error('Too few arguments: at least 3 needed'), end
if nargin < 4 | isempty(es), es = 0.0001; end
if nargin < 5 | isempty(maxit), maxit = 200; end

iter = 0;
ea = 100;
xr = xl;

while(1)
	xrold = xr;
	iter = iter + 1;
	xr = (xl * func(xu) - xu * func(xl))/(func(xu)-func(xl));
	if xr~= 0
		ea = abs((xr-xrold)/xr)*100;
	end
	if func(xl)*func(xr)<0
		xl = xr;
	else
		xl = xr;
	end
	if iter == maxit | ea <= es, break, end
end
root = xr;
fx = func(xr,varargin{:});
ea = ea;
iter = iter;
end
