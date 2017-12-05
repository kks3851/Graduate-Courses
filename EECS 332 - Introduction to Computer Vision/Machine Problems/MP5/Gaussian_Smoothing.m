% Intro  to Computer Vision 
% MP#5: Canny Edge Detection - Gaussian Smoothing 
% Author: Karan Shah
% Creating a Gaussian mask and then using the standard filter function

function S = Gaussian_Smoothing(I, N, sigma)

Gmask = fspecial('gaussian', [N,N], sigma);
S = imfilter(I, Gmask, 'replicate');

end