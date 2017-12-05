% Intro  to Computer Vision 
% MP#1: Connected Component Labeling 
% Author: Karan Shah
% Connected Component Labelling Function. 
% Input: img which is an image
% Output: label_img and label_num where label_img is the labeled
% image and label_num is the number of distinct labels

function [label_img, label_num] = ccl(input_image)
size1 = size(input_image);
l = 0;
label_num = 0;
conn = zeros(1,100);
disp(size(conn));
label_img = zeros(size1(1),size1(2));

for i=2:1:size1(1)-1
    for j=2:1:size1(2)-1
        if input_image(i,j) ~= 0
            %case 1
            if label_img(i,j-1)==0 && label_img(i-1,j) == 0
               l=l+1;
               conn(l) = l;
               label_img(i,j)=l;

            %case 2
            elseif label_img(i,j-1)~=0 && label_img(i-1,j) == 0
               label_img(i,j) = max(label_img(i-1,j),label_img(i,j-1)); 

            %case 3
            elseif label_img(i,j-1)==0 && label_img(i-1,j)~=0
                label_img(i,j) = max(label_img(i-1,j),label_img(i,j-1));

            %case 4
            elseif(label_img(i,j-1))~=0 && label_img(i-1,j)~=0 && label_img(i-1,j)==label_img(i,j-1)
                label_img(i,j) = label_img(i-1,j);
            %case 5
            else
                label_img(i,j) = min(label_img(i-1,j),label_img(i,j-1));
                
                conn(max(label_img(i-1,j),label_img(i,j-1))) = iter(conn,min(label_img(i-1,j),label_img(i,j-1)));
            end
            if label_img(i+1,j) ~= label_img(i,j+1)
                conn(max(label_img(i+1,j),label_img(i,j+1))) = iter(conn,min(label_img(i+1,j),label_img(i,j+1)));
        end
    end

end

si = size(label_img);

for i=1:1:si(1)
    for j=1:1:si(2)
        if(label_img(i,j)~=0)
             label_img(i,j) = conn(label_img(i,j));
        end
        
       
    end
end

label_num = size(unique(label_img));


end
end

% Recursive function to check if the lookup table has the correct value 
% assigned.

function [x] = iter(conn,x)
if(conn(x) ~=x)
    x = conn(x);
    iter(conn,x);

end

end


