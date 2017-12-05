% Intro  to Computer Vision 
% MP#5: Canny Edge Detection - Edge Linking 
% Author: Karan Shah
% we need to determine which weak edges are actual edges. 
% To do this, we perform an edge tracking algorithm. 
% Weak edges that are connected to strong edges will be actual/real edges. 
% Weak edges that are not connected to strong edges will be removed. 

function E = Edge_Linking(Magnitude_low, Magnitude_high, Magnitude)

[h,w] = size(Magnitude);
highThreshold = Magnitude_high;
lowThreshold = Magnitude_low;

strongEdgesRow = zeros(1,h*w); % Keep track of the strong edge row index
strongEdgesCol = zeros(1,h*w); % Keep track of the strong edge col index
weakEdgesRow = zeros(1,h*w); % Keep track of the weak edge row index
weakEdgesCol = zeros(1,h*w); % Keep track of the weak edge col index
strongIndex = 1;
weakIndex = 1;

% Iterate over rows and cols
for i=2:h-1 
for j=2:w-1 
    
if Magnitude(i,j) > highThreshold % Strong edge
Magnitude(i,j) = 1;
strongEdgesRow(strongIndex) = i;
strongEdgesCol(strongIndex) = j;
strongIndex = strongIndex + 1;

elseif Magnitude(i,j) < lowThreshold % No edge
Magnitude(i,j) = 0;

else % Weak edge
weakEdgesRow(weakIndex) = i;
weakEdgesCol(weakIndex) = j;
weakIndex = weakIndex + 1;
end
end
end
% Perform edge tracking by hysteresis
set(0,'RecursionLimit',10000)

for i=1:strongIndex-1
% Find the weak edges that are connected to strong edges and set
% them to 1
Magnitude = FindConnectedWeakEdges(Magnitude, strongEdgesRow(i),strongEdgesCol(i));
end
% Remove the remaining weak edges that are not actually edges
% and is noise instead
for i=1:weakIndex-1
if Magnitude(weakEdgesRow(i),weakEdgesCol(i)) ~= 1
Magnitude(weakEdgesRow(i),weakEdgesCol(i)) = 0;
end
end
E = Magnitude;
end

% Find weak edges that are connected to strong edges and set them to 1
function[Mag] = FindConnectedWeakEdges(Mag, row, col)
for i = -3:1:3
for j = -3:1:3
if (row+i > 0) && (col+j > 0) && (row+i < size(Mag,1)) && ...
(col+j < size(Mag,2)) % Make sure we are not out of bounds
if (Mag(row+i,col+j) > 0) && (Mag(row+i,col+j) < 1)
Mag(row+i,col+j) = 1;
Mag = FindConnectedWeakEdges(Mag, row+i, col+j);
end
end
end
end
end