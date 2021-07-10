# simpson.m
Evaluates the integral of two vectors by Simpsons 1/3 rule.

Synopsis: `[I] = Simpson(x, y)`

## Input
`x` - the vector of equally spaced independent variable.

`y` - the vector of function values with respect to x.

## Output
`I` - numerical calculated integral.

## Notes:
The current state of this function is **deprecated**. The algorithm fails compute the correct trapeziodal rule given 2 data points as well as 3 data points. Thus, failing to solve real problem. Pull requests are welcomed.
