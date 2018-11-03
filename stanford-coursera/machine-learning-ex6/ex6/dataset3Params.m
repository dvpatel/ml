function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

pred = 1000 ;

inp = [ 0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30 ] ;
inp_len = length(inp) ;

C_tmp = 0.001 ;
sigma_tmp = 0.003 ;

for i = 1:inp_len,

  C_tmp = inp(i) ;

  for j = 1:inp_len,

    sigma_tmp = inp(j) ;

    model= svmTrain(X, y, C_tmp, @(x1, x2) gaussianKernel(x1, x2, sigma_tmp));
    predictions = svmPredict(model, Xval);
    prediction_error = mean(double(predictions ~= yval)) ;

    if (prediction_error < pred)

      fprintf('p_error:  %f \n', pred) ;
      fprintf('new pred:  %f \n', prediction_error) ;
      fprintf('new C:  %f \n', C_tmp) ;
      fprintf('new sigma:  %f \n', sigma_tmp) ;

      C = C_tmp ;
      sigma = sigma_tmp ;
      pred = prediction_error ;

    end;

  end ;

end ;

pause ;


% =========================================================================

end
