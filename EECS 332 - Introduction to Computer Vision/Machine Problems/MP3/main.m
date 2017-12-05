% Intro  to Computer Vision 
% MP#3: Digital Image Analysis 
% Author: Karan Shah
% This is the main file. It performs Histogram Equalization and Lighting 
% Correction of input image.

clc;
clear all;
close all;

input_image = rgb2gray(imread('moon.bmp', 'bmp'));

figure (1);
subplot(2,3,1)
imshow(input_image);
title('Input Image');

%figure ();
subplot(2,3,2)
imhist(input_image);
title('Histogram of Input Image');

[image_output] = histogram_equlization(input_image);
%figure ();
subplot(2,3,4)
imshow(image_output);
title('Output Image');

%figure ();
subplot(2,3,5)
imhist(image_output);
title('Histogram after normalization');

image_light_correction = lighting_correction(image_output);
image_light_correction_output = mat2gray(image_light_correction);
%figure ();
subplot(2,3,6)
imshow(image_light_correction_output);
title('Image after lighting correction');
