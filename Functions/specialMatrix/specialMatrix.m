function [A] = specialMatrix(n,m)
% This function should return a matrix A as described in the problem statement
% Inputs n is the number of rows, and m the number of columns
% It is recomended to first create the matrxix A of the correct size, filling it with zeros to start with is not a bad choice

if nargin ~= 2
    error('Error: Please enter two arguments.')
end
if (n|m) <= 0
    error('Error: Index error. Arguments must be positive integers or logical values.')
end

A = zeros(n,m);     %Creates a "blank" n x m matrix full of zeros

% Now the real challenge is to fill in the correct values of A

A(1,:) = 1:m;       %Lables the first row with column numbers
A(:,1) = 1:n;       %Lables the first column with row numbers

for j = 2:n
	for k = 2:m    
		A(j,k)=A(j-1,k)+A(j,k-1);  % fills each element of the matrix with the sum of the left and above element.
	end
end
end