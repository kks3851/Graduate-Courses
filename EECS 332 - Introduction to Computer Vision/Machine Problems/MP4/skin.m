% Intro  to Computer Vision 
% MP#4: Histogram Based Skin Color Detection 
% Author: Karan Shah

clc;
clear all;
close all;

g1 = rgb2hsv(imread('gun_cropped.bmp'));
g2 = rgb2hsv(imread('gun_cropped1.bmp'));
g3 = rgb2hsv(imread('gun_cropped2.bmp'));
j1 = rgb2hsv(imread('joy_cropped.bmp'));
j2 = rgb2hsv(imread('joy_cropped1.bmp'));
j3 = rgb2hsv(imread('joy_cropped2.bmp'));
p1 = rgb2hsv(imread('pointer_cropped.bmp'));
p2 = rgb2hsv(imread('pointer_cropped1.bmp'));
p3 = rgb2hsv(imread('pointer_cropped2.bmp'));
figure(1);
subplot(3,4,1)
imshow(imread('gun1.bmp'));
title('Gun Input Image');
subplot(3,4,2)
imshow(hsv2rgb(g1));
title('Gun Cropped Input Image - 1');
subplot(3,4,3)
imshow(hsv2rgb(g2));
title('Gun Cropped Input Image - 2');
subplot(3,4,4)
imshow(hsv2rgb(g3));
title('Gun Cropped Input Image - 3');

subplot(3,4,5)
imshow(imread('joy1.bmp'));
title('Joy Input Image');
subplot(3,4,6)
imshow(hsv2rgb(j1));
title('Joy Cropped Input Image - 1');
subplot(3,4,7)
imshow(hsv2rgb(j2));
title('Joy Cropped Input Image - 2');
subplot(3,4,8)
imshow(hsv2rgb(j3));
title('Joy Cropped Input Image - 3');

subplot(3,4,9)
imshow(imread('pointer1.bmp'));
title('Pointer Input Image');
subplot(3,4,10)
imshow(hsv2rgb(p1));
title('Pointer Cropped Input Image - 1');
subplot(3,4,11)
imshow(hsv2rgb(p2));
title('Pointer Cropped Input Image - 2');
subplot(3,4,12)
imshow(hsv2rgb(p3));
title('Pointer Cropped Input Image - 3');

histogram = zeros(101, 101);
pixels = 0;

for u = 1:size(g1, 1)
    for v = 1:size(g1, 2)
        hue = round(g1(u, v, 1) * 100) + 1;
        saturation = round(g1(u, v, 2) * 100) + 1;
        histogram(hue, saturation) = histogram(hue, saturation) + 1;
        pixels = pixels + 1;
    end
end

for u = 1:size(g2, 1)
    for v = 1:size(g2, 2)
        hue = round(g2(u, v, 1) * 100) + 1;
        saturation = round(g2(u, v, 2) * 100) + 1;
        histogram(hue, saturation) = histogram(hue, saturation) + 1;
        pixels = pixels + 1;
    end
end

for u = 1:size(g3, 1)
    for v = 1:size(g3, 2)
        hue = round(g3(u, v, 1) * 100) + 1;
        saturation = round(g3(u, v, 2) * 100) + 1;
        histogram(hue, saturation) = histogram(hue, saturation) + 1;
        pixels = pixels + 1;
    end
end

for u = 1:size(j1, 1)
    for v = 1:size(j1, 2)
        hue = round(j1(u, v, 1) * 100) + 1;
        saturation = round(j1(u, v, 2) * 100) + 1;
        histogram(hue, saturation) = histogram(hue, saturation) + 1;
        pixels = pixels + 1;
    end
end

for u = 1:size(j2, 1)
    for v = 1:size(j2, 2)
        hue = round(j2(u, v, 1) * 100) + 1;
        saturation = round(j2(u, v, 2) * 100) + 1;
        histogram(hue, saturation) = histogram(hue, saturation) + 1;
        pixels = pixels + 1;
    end
end

for u = 1:size(j3, 1)
    for v = 1:size(j3, 2)
        hue = round(j3(u, v, 1) * 100) + 1;
        saturation = round(j3(u, v, 2) * 100) + 1;
        histogram(hue, saturation) = histogram(hue, saturation) + 1;
        pixels = pixels + 1;
    end
end

for u = 1:size(p1, 1)
    for v = 1:size(p1, 2)
        hue = round(p1(u, v, 1) * 100) + 1;
        saturation = round(p1(u, v, 2) * 100) + 1;
        histogram(hue, saturation) = histogram(hue, saturation) + 1;
        pixels = pixels + 1;
    end
end

for u = 1:size(p2, 1)
    for v = 1:size(p2, 2)
        hue = round(p2(u, v, 1) * 100) + 1;
        saturation = round(p2(u, v, 2) * 100) + 1;
        histogram(hue, saturation) = histogram(hue, saturation) + 1;
        pixels = pixels + 1;
    end
end

for u = 1:size(p3, 1)
    for v = 1:size(p3, 2)
        hue = round(p3(u, v, 1) * 100) + 1;
        saturation = round(p3(u, v, 2) * 100) + 1;
        histogram(hue, saturation) = histogram(hue, saturation) + 1;
        pixels = pixels + 1;
    end
end

histogram = histogram ./ pixels;
x = 0:100;
figure (2);
bar3(histogram);
title('Training Histogram'); xlabel('Hue'); ylabel('Saturation');

gun_output = rgb2hsv(imread('gun1.bmp'));
joy_output = rgb2hsv(imread('joy1.bmp'));
pointer_output = rgb2hsv(imread('pointer1.bmp'));

threshold = 0.00025;

for u = 1:size(gun_output, 1)
    for v = 1:size(gun_output, 2)
        hue = round(gun_output(u, v, 1) * 100) + 1;
        saturation = round(gun_output(u, v, 2) * 100) + 1;
        
        if (histogram(hue, saturation) < threshold)
            gun_output(u, v, :) = 0;
        end
    end
end
figure (3);
subplot(2,3,1)
imshow(imread('gun1.bmp'));
title('Gun Input Image');
subplot(2,3,4)
imshow(hsv2rgb(gun_output));
title('Gun Skin Detected Image');

for u = 1:size(joy_output, 1)
    for v = 1:size(joy_output, 2)
        hue = round(joy_output(u, v, 1) * 100) + 1;
        saturation = round(joy_output(u, v, 2) * 100) + 1;
        
        if (histogram(hue, saturation) < threshold)
            joy_output(u, v, :) = 0;
        end
    end
end
subplot(2,3,2)
imshow(imread('joy1.bmp'));
title('Joy Input Image');
subplot(2,3,5)
imshow(hsv2rgb(joy_output));
title('Joy Skin Detected Image');

for u = 1:size(pointer_output, 1)
    for v = 1:size(pointer_output, 2)
        hue = round(pointer_output(u, v, 1) * 100) + 1;
        saturation = round(pointer_output(u, v, 2) * 100) + 1;
        
        if (histogram(hue, saturation) < threshold)
            pointer_output(u, v, :) = 0;
        end
    end
end
subplot(2,3,3)
imshow(imread('pointer1.bmp'));
title('Pointer Input Image');
subplot(2,3,6)
imshow(hsv2rgb(pointer_output));
title('Pointer Skin Detected Image');
