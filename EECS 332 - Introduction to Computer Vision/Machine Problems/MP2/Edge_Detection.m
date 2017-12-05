% Intro  to Computer Vision 
% MP#2: Morphological Operations - Edge Detection
% Author: Karan Shah
% Edge Detection Function. 
% Input: original image and structuring element
% Output: image with detected edge

function image_output_edge_detection = Edge_Detection(image_input,struct_element)

image_part1 = Dilation(image_input,struct_element);
image_part2 = Dilation(image_part1,struct_element);
image_output_edge_detection =  image_part2 - image_part1;

end