function vectorImage = imageTo20x20GrayFromObj(imageObj)
%IMAGETO20X20GRAY display reduced image and converts for digit classification
%

vectorImage = reshape(imresize(mat2gray(reshape(imageObj,28,28)), [20 20]), 1, 400) ;

end;

