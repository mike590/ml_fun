function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

% Find all the indices of y that are 1 and 0, respectively
ones = find(y==1);
zeroes = find(y==0);
% // Plot using those indices
plot(X(ones,1), X(ones, 2), 'k+', 'LineWidth', 2, 'MarkerSize', 7);
plot(X(zeroes,1), X(zeroes, 2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);






% =========================================================================



hold off;

end
