load('mnist.mat');
X = zeros(size(trainX,1),400) ;
for i = 1:size(trainX,1)
  temp = trainX(i,:) ;
  X(i,:) = imageTo20x20GrayFromObj(temp) ;
end;
y = trainY' ;
for i = 1: size(y)
  if (y(i,:) == 0)
    y(i,:) = 10 ;
  end
end
save -binary mnist400.mat X y ;

