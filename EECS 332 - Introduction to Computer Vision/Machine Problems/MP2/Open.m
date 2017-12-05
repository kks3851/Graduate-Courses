% Intro  to Computer Vision 
% MP#2: Morphological Operations - Open 
% Author: Karan Shah
% Open Function. 
% Input: original image and structuring element
% Output: image with open function

function image_output_open = Open(image_input,struct_element)

image_part = Erosion(image_input,struct_element);
image_output_open = Dilation(image_part,struct_element);

end