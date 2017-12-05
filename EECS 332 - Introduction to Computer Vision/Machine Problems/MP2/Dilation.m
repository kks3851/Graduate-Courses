% Intro  to Computer Vision 
% MP#2: Morphological Operations - Dilation 
% Author: Karan Shah
% Dilation Function. 
% Input: original image and structuring element
% Output: image with dilated function

function image_output_dilation = Dilation(image_input,struct_element)
si = size(image_input);
sii = size(struct_element);
image_output_dilation = zeros(si(1),si(2));
for i=1:si(1)-sii(1)
    for j=1:si(2)-sii(2)
           a = 0;
           for k=1: sii(1)
              for l =1: sii(2)
                 if image_input(i+k-1,j+l-1) == struct_element(k,l)
                     a = 1;
                 end
              end
           end
           
            image_output_dilation(i,j) = a ;
    end    
end
end