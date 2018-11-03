%% Classify my own image ;  number5.jpg
%%  https://www.coursera.org/learn/machine-learning/resources/EcbzQ

%% Initialization
clear ; close all; clc

pkg load image ;

ex3_nn();

% Load the weights into variables Theta1 and Theta2
vectorImage= imageTo20x20Gray("number5.jpg",100,0) ;
pred = predict(Theta1, Theta2, vectorImage);

%  fprintf('\nTraining Set Accuracy: %f\n', mean(double(pred == y)) * 100);
fprintf('\nNeural Network Prediction: %d (digit %d)\n', pred, mod(pred, 10));
