# luFactor.m
Performs LU decomposition with pivoting. 

Synopsis: `[L, U, P] = luFactor(A)`.

## Input
`A` - a coefficient matrix.

## Output
`L` - lower triangular matrix, with 1's along the diagonals.

`U` - upper triangular matrix.

`P` - the permutation matrix.

## Notes:
Be cautious when using this function on bigger matrices. The 'L' variable is known to be incorrect.