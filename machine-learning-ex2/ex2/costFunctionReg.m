function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

% cost
hypos = sigmoid(X*theta);
JNonReg = sum(((y.*log(hypos))+((1-y).*(log(1-hypos)))))/-m;
regTerm = sum(theta([2:end]).^2);
regCo = lambda/(2*m);
J = regCo * regTerm + JNonReg;
% gradient
errors = hypos-y;
gradNonReg = (X'*errors)./m;
% dont regularize theta(1)
tempTheta = [0; theta([2:end],1)];
grad = ((lambda/m).*(tempTheta)) + gradNonReg;


% =============================================================

end
