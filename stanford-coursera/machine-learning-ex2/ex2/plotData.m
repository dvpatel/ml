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

%  Get all admitted (pos = 1)
pos = find(y == 1) ;

%  Plot all admitted students ;
plot(X(pos, 1), X(pos, 2), 'k+', 'LineWidth', 2, 'MarkerSize', 7);

%  Get all rejected (neg = 1)
neg = find(y == 0) ;

%  Plot all rejected students ;
plot(X(neg, 1), X(neg, 2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);

%  label handled in ex2
% xlabel('Exam 1 score');        % Set x-axis label
% ylabel('Exam 2 score');        % Set y-axis label

% =========================================================================



hold off;

end
