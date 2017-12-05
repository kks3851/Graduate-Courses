clc;
clear all;
close all;

oringinal_image = imread('lena.bmp');
image = rgb2gray(oringinal_image);
figure (1);
imshow(image);
title('Original Image');

%Gaussian Smoothing
image_gaussian_smoothing = Gaussian_Smoothing(image, 3, 3);
imshow(image_gaussian_smoothing); 
title('After Gaussian Smoothing');

%Image Gradient
[Magnitude, Theta] = Image_Gradient(image_gaussian_smoothing);
imshow(mat2gray(Magnitude)); 
title('After Image Gradient');

%Finding the Thresholds
raw_image = uint8(255*mat2gray(Magnitude));
histogram = imhist(raw_image);
[T_low, T_high] = Threshold(raw_image);

%Nonmaxima Supression
NonMaxima_Magnitude = NonMaxima_Suppression(image_gaussian_smoothing);
imshow(mat2gray(NonMaxima_Magnitude));
title('After Nonmaxima Suppression');

%Edge linking
Edge_linked_image = Edge_Linking(T_low, T_high, NonMaxima_Magnitude);
subplot(2,2,1)
imshow((Edge_linked_image)); 
title('Canny Edge Detection');

% Comparison with Standard Function
Edge_standard_func = edge(image, 'sobel');
subplot(2,2,2)
imshow(Edge_standard_func);
title('Standard Function with Sobel');

Edge_standard_func = edge(image, 'roberts');
subplot(2,2,3)
imshow(Edge_standard_func);
title('Standard Function with Robert');

Edge_standard_func = edge(image, 'zerocross');
subplot(2,2,4)
imshow(Edge_standard_func);
title('Standard Function with Zeroscross');

