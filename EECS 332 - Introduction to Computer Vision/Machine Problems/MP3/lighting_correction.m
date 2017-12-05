% Intro  to Computer Vision 
% MP#3: Digital Image Analysis 
% Author: Karan Shah
% Ligting Correction Function. 
% Input: image input
% Output: light corrected image

function [image_light_correction] = lighting_correction(image_input)
size_image_1ight_correction = size(image_input);
x = zeros(size_image_1ight_correction(1)*size_image_1ight_correction(2),1);
y = zeros(size_image_1ight_correction(1)*size_image_1ight_correction(2),1);
z = zeros(size_image_1ight_correction(1)*size_image_1ight_correction(2),1);
for i = 1: size(image_input,1)
   for j = 1: size(image_input,2)
      x(i*(size(image_input,2)-1)+j) = i;
      y(i*(size(image_input,2)-1)+j) = j;
      z(i*(size(image_input,2)-1)+j) = image_input(i,j);
   end
end
N = length(x);
X =[ones(N,1),x, y];
Y = z;
coeff = inv(X'*X)*X'*Y;
image_light_correction = image_input;
for i = 1:size_image_1ight_correction(1)
   for j= 1:size_image_1ight_correction(2)
      image_light_correction(i,j) = image_input(i,j) - coeff(2)*i - coeff(3)*j - coeff(1);
   end
end
end