% Intro  to Computer Vision 
% MP#2: Morphological Operations - Closing 
% Author: Karan Shah
% Close Function. 
% Input: original image and structuring element
% Output: image with close function

function image_output_close = Close(image_input,struct_element)
image_part = Dilation(image_input,struct_element);
image_output_close = Erosion(image_part,struct_element);
end