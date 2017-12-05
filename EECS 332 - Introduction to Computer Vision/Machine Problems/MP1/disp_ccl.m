% Intro  to Computer Vision 
% MP#1: Connected Component Labeling 
% Author: Karan Shah
% This is the main file, run this program and make sure the file "ccl.m" is
% present in the same folder, along with the image files

clc;
clear all;
close all;

% Read the input image
input_image = imread('test_1.png');
figure(1);
imshow(input_image)

% Size Filter for gun.bmp
input_image = bwareaopen(input_image,230);

% CCL function call
[label_img,label_num] = ccl(input_image);

label_num %display the number of distinct labels
figure(2);

% Conversion from labels to grayscale image
output_image = mat2gray(label_img);
output_image1 = label2rgb(label_img);

% Output
imshow(output_image);

figure(3);
imshow(output_image1);

