% ANSHUL GAUTAM
% IIIT-D

function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    
    z1 = 0;
    for i = 1:m
        h_x = theta(1) + theta(2).*X(i,2);
        y_x = y(i);
        z1 = z1 + (h_x - y_x);
    end

    den1 = alpha/(m);
    J1 = den1*z1;
    
    z2 = 0;
    for i = 1:m
        h_x = theta(1) + theta(2).*X(i,2);
        y_x = y(i);
        z2 = z2 + (h_x - y_x)*X(i,2);
    end

    den2 = alpha/(m);
    J2 = den2*z2;
    
    a = theta(1) - J1;
    b = theta(2) - J2;
    theta(1) = a;
    theta(2) = b;

    % ============================================================

    % Save the cost J in every iteration    
    x = computeCost(X, y, theta);
    J_history(iter) = x;

end

end
