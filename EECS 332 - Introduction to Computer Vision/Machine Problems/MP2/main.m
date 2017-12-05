% Intro  to Computer Vision 
% MP#2: Morphological Operators 
% Author: Karan Shah
% This is the main file. It performs dilation, erosion, open, close and 
% edge detection fucntion

clc;
clear all;
close all;

input_image = imread('gun.bmp');

figure(1);
subplot(2,3,1)
imshow(input_image);
title('Input Image');

% Structuring Element. 
struct_element = ones(3,3);

%Erosion function
image_output_erosion = Erosion(input_image,struct_element);
subplot(2,3,2)
imshow(image_output_erosion);
title ('Erosion');

%Dilation function
image_output_dilation = Dilation(input_image,struct_element);
subplot(2,3,3)
imshow(image_output_dilation);
title ('Dilation')

%Opening function
image_output_open = Open(input_image,struct_element);
subplot(2,3,4)
imshow(image_output_open);
title ('Opening');

%Closing function
image_output_close = Close(input_image,struct_element);
subplot(2,3,5)
imshow(image_output_close);
title ('Closing');

% function
image_output_edge_detection = Edge_Detection(input_image,struct_element);
subplot(2,3,6)
imshow(image_output_edge_detection);
title('Edge Detection');