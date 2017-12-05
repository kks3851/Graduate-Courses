% Intro  to Computer Vision 
% MP#4: Histogram Based Skin Color Detection
% This program is to crop images for skin color detection
% Author: Karan Shah

clc;
close all;
clear all;

gun_cropped = imread('gun1.bmp');
gun_cropped = imcrop(gun_cropped);
imwrite(gun_cropped, 'gun_cropped.bmp');
gun_cropped = imread('gun1.bmp');
gun_cropped = imcrop(gun_cropped);
imwrite(gun_cropped, 'gun_cropped1.bmp');
gun_cropped = imread('gun1.bmp');
gun_cropped = imcrop(gun_cropped);
imwrite(gun_cropped, 'gun_cropped2.bmp');
gun_cropped = imread('joy1.bmp');
gun_cropped = imcrop(gun_cropped);
imwrite(gun_cropped, 'joy_cropped.bmp');
gun_cropped = imread('joy1.bmp');
gun_cropped = imcrop(gun_cropped);
imwrite(gun_cropped, 'joy_cropped1.bmp');
gun_cropped = imread('joy1.bmp');
gun_cropped = imcrop(gun_cropped);
imwrite(gun_cropped, 'joy_cropped2.bmp');
gun_cropped = imread('pointer1.bmp');
gun_cropped = imcrop(gun_cropped);
imwrite(gun_cropped, 'pointer_cropped.bmp');
gun_cropped = imread('pointer1.bmp');
gun_cropped = imcrop(gun_cropped);
imwrite(gun_cropped, 'pointer_cropped1.bmp');
gun_cropped = imread('pointer1.bmp');
gun_cropped = imcrop(gun_cropped);
imwrite(gun_cropped, 'pointer_cropped2.bmp');