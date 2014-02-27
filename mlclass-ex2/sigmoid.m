function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));
s=size(z);
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

for k=1:s(1)
    for l=1:s(2)
    
    
    g(k,l)=1/(1+exp(-z(k,l)));
end

end
% =============================================================

end
