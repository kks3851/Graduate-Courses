% Intro  to Computer Vision 
% MP#3: Digital Image Analysis 
% Author: Karan Shah
% Histogram Equalization Function. 
% Input: image input
% Output: histogram equlized image

function image_output = histogram_equlization(image_input)
r = size(image_input,1);
c = size(image_input,2);
image_output = uint8(zeros(r,c));
n = r*c;
f = zeros(256,1);
probability_density_function = zeros(256,1);
cumalitave_density_function = zeros(256,1);
cumalitive_sum = zeros(256,1);
output = zeros(256,1);

for i=1:r
   for j=1:c
      value = image_input(i,j);
      f(value+1) = f(value+1)+1;
      probability_density_function(value+1) = f(value+1)/n;
   end
end
sum = 0;
l = 255;

for i=1:size(probability_density_function)
   sum = sum + f(i);
   cumalitive_sum(i) = sum;
   cumalitave_density_function(i) = cumalitive_sum(i)/n;
   output(i) = round(cumalitave_density_function(i)*l);
end
%figure;
subplot(2,3,3)
plot(cumalitave_density_function);
title ('Transfer Function');
for i=1:r
   for j=1:c
      image_output(i,j) = output(image_input(i,j)+1); 
   end
end
end