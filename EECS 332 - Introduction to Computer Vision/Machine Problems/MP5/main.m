% Intro  to Computer Vision 
% MP#5: Canny Edge Detection 
% Author: Karan Shah

clc;
clear all;
close all;

oringinal_image = imread('lena.bmp');
image = rgb2gray(oringinal_image);
figure (1);
subplot(2,3,1)
imshow(image);
title('Original Image');

%Gaussian Smoothing
image_gaussian_smoothing = Gaussian_Smoothing(image, 3, 3);
subplot(2,3,2)
imshow(image_gaussian_smoothing); 
title('After Gaussian Smoothing');

%Image Gradient
[Magnitude, Theta] = Image_Gradient(image_gaussian_smoothing);
subplot(2,3,3)
imshow(mat2gray(Magnitude)); 
title('After Image Gradient');

%Finding the Thresholds
raw_image = uint8(255*mat2gray(Magnitude));
histogram = imhist(raw_image);
[T_low, T_high] = Threshold(raw_image);

%Nonmaxima Supression
NonMaxima_Magnitude = NonMaxima_Suppression(image_gaussian_smoothing);
subplot(2,3,4)
imshow(mat2gray(NonMaxima_Magnitude));
title('After Nonmaxima Suppression');

%Edge linking
Edge_linked_image = Edge_Linking(T_low, T_high, NonMaxima_Magnitude);
subplot(2,3,5)
imshow((Edge_linked_image)); 
title('After Edge Linking');

% Comparison with Standard Function
Edge_standard_func = edge(image, 'sobel');
subplot(2,3,6)
imshow(Edge_standard_func);
title('Standard Function with Sobel');

% Joy 
oringinal_image = imread('joy1.bmp');
image = rgb2gray(oringinal_image);
figure (2);
subplot(2,3,1)
imshow(image);
title('Original Image');

%Gaussian Smoothing
image_gaussian_smoothing = Gaussian_Smoothing(image, 4, 3);
subplot(2,3,2)
imshow(image_gaussian_smoothing); 
title('After Gaussian Smoothing');

%Image Gradient
[Magnitude, Theta] = Image_Gradient(image_gaussian_smoothing);
subplot(2,3,3)
imshow(mat2gray(Magnitude)); 
title('After Image Gradient');

%Finding the Thresholds
raw_image = uint8(255*mat2gray(Magnitude));
histogram = imhist(raw_image);
[T_low, T_high] = Threshold(raw_image);

%Nonmaxima Supression
NonMaxima_Magnitude = NonMaxima_Suppression(image_gaussian_smoothing);
subplot(2,3,4)
imshow(mat2gray(NonMaxima_Magnitude));
title('After Nonmaxima Suppression');

%Edge linking
Edge_linked_image = Edge_Linking(T_low, T_high, NonMaxima_Magnitude);
subplot(2,3,5)
imshow((Edge_linked_image)); 
title('After Edge Linking');

% Comparison with Standard Function
Edge_standard_func = edge(image, 'sobel');
subplot(2,3,6)
imshow(Edge_standard_func);
title('Standard Function with Sobel');

% Gun 
oringinal_image = imread('gun1.bmp');
image = rgb2gray(oringinal_image);
figure (3);
subplot(2,3,1)
imshow(image);
title('Original Image');

%Gaussian Smoothing
image_gaussian_smoothing = Gaussian_Smoothing(image, 4, 3);
subplot(2,3,2)
imshow(image_gaussian_smoothing); 
title('After Gaussian Smoothing');

%Image Gradient
[Magnitude, Theta] = Image_Gradient(image_gaussian_smoothing);
subplot(2,3,3)
imshow(mat2gray(Magnitude)); 
title('After Image Gradient');

%Finding the Thresholds
raw_image = uint8(255*mat2gray(Magnitude));
histogram = imhist(raw_image);
[T_low, T_high] = Threshold(raw_image);

%Nonmaxima Supression
NonMaxima_Magnitude = NonMaxima_Suppression(image_gaussian_smoothing);
subplot(2,3,4)
imshow(mat2gray(NonMaxima_Magnitude));
title('After Nonmaxima Suppression');

%Edge linking
Edge_linked_image = Edge_Linking(T_low, T_high, NonMaxima_Magnitude);
subplot(2,3,5)
imshow((Edge_linked_image)); 
title('After Edge Linking');

% Comparison with Standard Function
Edge_standard_func = edge(image, 'sobel');
subplot(2,3,6)
imshow(Edge_standard_func);
title('Standard Function with Sobel');

% Test 
oringinal_image = imread('test1.bmp');
image = rgb2gray(oringinal_image);
figure (4);
subplot(2,3,1)
imshow(image);
title('Original Image');

%Gaussian Smoothing
image_gaussian_smoothing = Gaussian_Smoothing(image, 6, 3);
subplot(2,3,2)
imshow(image_gaussian_smoothing); 
title('After Gaussian Smoothing');

%Image Gradient
[Magnitude, Theta] = Image_Gradient(image_gaussian_smoothing);
subplot(2,3,3)
imshow(mat2gray(Magnitude)); 
title('After Image Gradient');

%Finding the Thresholds
raw_image = uint8(255*mat2gray(Magnitude));
histogram = imhist(raw_image);
[T_low, T_high] = Threshold(raw_image);

%Nonmaxima Supression
NonMaxima_Magnitude = NonMaxima_Suppression(image_gaussian_smoothing);
subplot(2,3,4)
imshow(mat2gray(NonMaxima_Magnitude));
title('After Nonmaxima Suppression');

%Edge linking
Edge_linked_image = Edge_Linking(T_low, T_high, NonMaxima_Magnitude);
subplot(2,3,5)
imshow((Edge_linked_image)); 
title('After Edge Linking');

% Comparison with Standard Function
Edge_standard_func = edge(image, 'sobel');
subplot(2,3,6)
imshow(Edge_standard_func);
title('Standard Function with Sobel');

% Pointer 
oringinal_image = imread('pointer1.bmp');
image = rgb2gray(oringinal_image);
figure (5);
subplot(2,3,1)
imshow(image);
title('Original Image');

%Gaussian Smoothing
image_gaussian_smoothing = Gaussian_Smoothing(image, 4, 3);
subplot(2,3,2)
imshow(image_gaussian_smoothing); 
title('After Gaussian Smoothing');

%Image Gradient
[Magnitude, Theta] = Image_Gradient(image_gaussian_smoothing);
subplot(2,3,3)
imshow(mat2gray(Magnitude)); 
title('After Image Gradient');

%Finding the Thresholds
raw_image = uint8(255*mat2gray(Magnitude));
histogram = imhist(raw_image);
[T_low, T_high] = Threshold(raw_image);

%Nonmaxima Supression
NonMaxima_Magnitude = NonMaxima_Suppression(image_gaussian_smoothing);
subplot(2,3,4)
imshow(mat2gray(NonMaxima_Magnitude));
title('After Nonmaxima Suppression');

%Edge linking
Edge_linked_image = Edge_Linking(T_low, T_high, NonMaxima_Magnitude);
subplot(2,3,5)
imshow((Edge_linked_image)); 
title('After Edge Linking');

% Comparison with Standard Function
Edge_standard_func = edge(image, 'sobel');
subplot(2,3,6)
imshow(Edge_standard_func);
title('Standard Function with Sobel');