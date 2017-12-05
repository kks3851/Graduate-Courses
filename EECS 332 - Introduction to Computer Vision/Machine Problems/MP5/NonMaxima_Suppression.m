% Intro  to Computer Vision 
% MP#5: Canny Edge Detection - NonMaxima Supression 
% Author: Karan Shah
% Non maximum suppression works by finding the pixel with the maximum value in an edge.
% It occurs when pixel q has an intensity that is larger than
% both p and r where pixels p and r are the pixels in the gradient direction of q.
% If this condition is true, then we keep the pixel, 
% otherwise we set the pixel to zero (make it a black pixel).

function NonMaxima_Magnitude = NonMaxima_Suppression(image)

[h,w] = size(image);
NonMaxima_Magnitude = 0;
[Magnitude, Theta, Gx, Gy] = Image_Gradient(image);

% Initialize the X and Y vectors
X=[-1,0,+1 ;-1,0,+1 ;-1,0,+1];
Y=[-1,-1,-1 ;0,0,0 ;+1,+1,+1];
output = zeros(h,w);
x = [0 1];

% Iterate over each row and coloumn

for i = 2:h-1 
for j = 2:w-1

if (Theta(i,j)>=0 && Theta(i,j)<=45) || (Theta(i,j)<-135 && Theta(i,j)>=-180)
yBot = [Magnitude(i,j+1) Magnitude(i+1,j+1)];
yTop = [Magnitude(i,j-1) Magnitude(i-1,j-1)];
x_est = abs(Gy(i,j)/Magnitude(i,j)); 

% Interpolation is performed in this step
if (Magnitude(i,j) >= ((yBot(2)-yBot(1))*x_est+yBot(1)) && Magnitude(i,j) >= ((yTop(2)-yTop(1))*x_est+yTop(1)))
output(i,j)= Magnitude(i,j);
else
output(i,j)=0;
end

elseif (Theta(i,j)>45 && Theta(i,j)<=90) || (Theta(i,j)<-90 && Theta(i,j)>=-135)
yBot = [Magnitude(i+1,j) Magnitude(i+1,j+1)];
yTop = [Magnitude(i-1,j) Magnitude(i-1,j-1)];
x_est = abs(Gx(i,j)/Magnitude(i,j));

if (Magnitude(i,j) >= ((yBot(2)-yBot(1))*x_est+yBot(1)) && Magnitude(i,j) >= ((yTop(2)-yTop(1))*x_est+yTop(1)))
output(i,j)= Magnitude(i,j);
else
output(i,j)=0;
end

elseif (Theta(i,j)>90 && Theta(i,j)<=135) || (Theta(i,j)<-45 && Theta(i,j)>=-90)
yBot = [Magnitude(i+1,j) Magnitude(i+1,j-1)];
yTop = [Magnitude(i-1,j) Magnitude(i-1,j+1)];
x_est = abs(Gx(i,j)/Magnitude(i,j));

if (Magnitude(i,j) >= ((yBot(2)-yBot(1))*x_est+yBot(1)) && Magnitude(i,j) >= ((yTop(2)-yTop(1))*x_est+yTop(1)))
output(i,j)= Magnitude(i,j);
else
output(i,j)=0;
end

elseif (Theta(i,j)>135 && Theta(i,j)<=180) || (Theta(i,j)<0 && Theta(i,j)>=-45)
yBot = [Magnitude(i,j-1) Magnitude(i+1,j-1)];
yTop = [Magnitude(i,j+1) Magnitude(i-1,j+1)];
x_est = abs(Gx(i,j)/Magnitude(i,j));

if (Magnitude(i,j) >= ((yBot(2)-yBot(1))*x_est+yBot(1)) && Magnitude(i,j) >= ((yTop(2)-yTop(1))*x_est+yTop(1)))
output(i,j)= Magnitude(i,j);
else
output(i,j)=0;
end
end
end
end
NonMaxima_Magnitude = (output);
end