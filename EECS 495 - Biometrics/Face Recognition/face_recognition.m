clc;
clear all;
close all;
faceDetector_selected_img = vision.CascadeObjectDetector();
faceDetector_test_img = vision.CascadeObjectDetector();
% datapath = ' path of your training images';
% testpath = ' path for test images';
datapath = uigetdir('C:\Users\Karan\Desktop\MS\Biometrics\assignment 3\Facedatabase','select path of training images');
testpath = uigetdir('C:\Users\Karan\Desktop\MS\Biometrics\assignment 3\FaceDatabase','select path of test images');

prompt = {'Enter test image name (a number between 1 to 10):'};
dlg_title = 'Input of PCA-Based Face Recognition System';
num_lines= 1;
def = {' '};
TestImage = inputdlg(prompt,dlg_title,num_lines,def);
TestImage = strcat(testpath,'\',char(TestImage),'.nef');
recog_img = facerecog(datapath,TestImage);

selected_img = strcat(datapath,'\',recog_img);
select_img = imread(selected_img);
imshow(imrotate(select_img,90));
title('Recognized Image');

test_img = imread(TestImage);
figure,imshow(imrotate(test_img,90));
title('Test Image');

result = strcat('the recognized image is : ',recog_img);
disp(result);

videoFrame_selected = imrotate(select_img,90); 
bbox = step(faceDetector_selected_img, videoFrame_selected);
points_selected = detectMinEigenFeatures(rgb2gray(videoFrame_selected), 'ROI', bbox);
figure, imshow(videoFrame_selected), hold on, title('Detected features for Selected Image');
plot(points_selected);

videoFrame_test = imrotate(test_img,90); 
bbox = step(faceDetector_test_img, videoFrame_test);
points_test = detectMinEigenFeatures(rgb2gray(videoFrame_test), 'ROI', bbox);
figure, imshow(videoFrame_test), hold on, title('Detected features for Test Image');
plot(points_test);

