# Heun.m
Uses the heun method to integrate an ODE. 

Synopsis: `[t,y] = Heun(dydt,tspan,y0,h)`.

## Input
`dydt` -the differential equation of interest (must be anonymous function).

`tspan` - the initial and final values of the independent variable as a vector with length=2 [ti,tf].

`y0` - the initial value of the dependent variable.

`h` - step size.

`es` - stopping criterion (%), optional (default = 0.001).

`maxit` - maximum iterations of corrector, optional (default = 50).

## Output
`t` - vector of independent variable values

`y` - vector of solution for dependent variable  

## Notes:
This function needs some working on to compute a correct solution when using multiple steps with an irregular step size at the end. 
