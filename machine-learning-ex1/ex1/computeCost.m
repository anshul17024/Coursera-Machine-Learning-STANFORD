% ANSHUL GAUTAM
% IIIT-D

function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

zz = 0;
for i = 1:m
    h_x = theta(1) + theta(2).*X(i,2);
    y_x = y(i);
    zz = zz + (h_x - y_x)*(h_x - y_x);
end

den = 1/(2*m);
J = den*zz;


% =========================================================================

end
