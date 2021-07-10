function [L, U, P] = luFactor(A)
% luFactor(A)
%	LU decomposition with pivoting
% inputs:
%	A = coefficient matrix
% outputs:
%	L = lower triangular matrix
%	U = upper triangular matrix
%       P = the permutation matrix


[m,n] = size(A);
if m~=n, error('Enter a square matrix.'); end
nb = n + 1;
L=zeros(m,m);
U=zeros(m,m);
P=eye(m);

%Partial pivoting
for j = 1:n - 1
	for p = j+1:m
		if (abs(A(j,j)) < abs(A(p,j)))
			A([j p],:) = A([p j],:);
			P([j p],:) = P([p j],:);
		end
	end
end
%	[big,i] = max(abs(A(j:n,j)));
%	ipr = i + j - 1;
%	if ipr ~= j
%		A([j,ipr],:) = A([ipr,j],:);
%	end
%end

for i=1:m
	% Computing L
	for k=1:i-1
		L(i,k)=A(i,k);
		for j=1:k-1
			L(i,k)= L(i,k)-L(i,j)*U(j,k);
		end
		L(i,k) = L(i,k)/U(k,k);
	end

	% Computing U
	for k=i:m
		U(i,k) = A(i,k);
		for j=1:i-1
			U(i,k)= U(i,k)-L(i,j)*U(j,k);
		end
	end
end

for i=1:m
	L(i,i)=1;
end

%% Checks
if P*A ~= L*U, error('LU factorization failed to be computed correctly.'); end

% Checks output size
if size(L) ~= size(A) | size(U) ~= size(A) | size(P) ~= size(A)
	error('Incorrect output size')
end

% Checks if matrices are triangular
%for i=1:m
%	for j=1:n		
%	error('Incorrect output: LU decomposition are not triangular')
%end

% Checks the permutation matrix P is valid
%P_str = string(P)
%for k = m
%	num1=count(P(:,1:n),1)
%	if num1 ~=1
%		error('Incorrect P matrix output. Too many 1's on the same line')
%	end
%	num0=count(P(:,1:n),0)
%	if num0 ~= n-1
%		error('Incorrect P matric output. Wrong number of 0's')
%	end
%end

%}

end