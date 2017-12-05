% Intro  to Computer Vision 
% MP#5: Canny Edge Detection - Image Gradient 
% Author: Karan Shah
% Function to get the Magnitude in X, Y Direction and angle

function [Magnitude, Theta, Gx, Gy] = Image_Gradient(S)

[Gx, Gy] = imgradientxy(S);
[Magnitude, Theta] = imgradient(Gx, Gy);

end
