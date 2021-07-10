# falsePosition.m
Function finds the root of an anonymous function using the false position method. 

Synopsis: `[root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)`.

## Input
`func` - the function being evaluated.

`xl` - lower bound guess.

`xu` - upper bound guess.

`es` - desired relative error (default 0.0001%)

`maxit` - maximum number of iterations (default 200)

`varargin` - any additional parameters used by the function


## Output
`root` - estimated root location.

`fx` - function evaluated at root location.

`ea` - approximated relative error (%).

`iter` - number of iterations performed.

## Notes:
Known issue: the output of `iter` needs fixing. The output is incorrect.