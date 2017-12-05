% Intro  to Computer Vision 
% MP#2: Morphological Operations - Erosion 
% Author: Karan Shah
% Erosion Function. 
% Input: original image and structuring element
% Output: image with erosion function 

function image_output_erosion = Erosion(image_input, struct_element)

si = size(image_input);
sii = size(struct_element);
image_output_erosion = zeros(si(1),si(2));
for i=1:si(1)-sii(1)
    for j=1:si(2)-sii(2)
           a = 1;
           for k=1: sii(1)
              for l =1: sii(2)
                 if image_input(i+k-1,j+l-1) ~= struct_element(k,l)
                     a = 0;
                 end
              end
           end
           
            image_output_erosion(i,j) = a ;
    end    

end
end

