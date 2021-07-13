# specialMatrix.m
Function returns a special matrix A with the following criteria:

- The value of each element in the first row is the number of the column.
- The value of each element in the first column is the number of the row.
- The rest of the elements each has a value equal to the sum of the element above it and element to the left.
- The function returns a sensible error if the user does not input exactly two arguments.

 Synopsis: `[root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)`.

## Input
`func` - the function being evaluated.

`xl` - lower bound guess.

`xu` - upper bound guess.

`es` - desired relative error (default 0.0001%)

`maxit` - maximum number of iterations (default 200)

`varargin` - any additional parameters used by the function


## Output
`A` - special matrix with the appropriate rules

## Notes:
This function has not much of a practical application, rather a very good exercise for beginners to get started with the basics of matrix manipulation and user-defined functions.
