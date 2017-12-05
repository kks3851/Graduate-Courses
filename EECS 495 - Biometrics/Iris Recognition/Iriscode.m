clc;
close all;
clear all;
scales = 0;
a = zeros(10,10); %hd between probe1 and gallery
b = zeros(10,10); %hd between probe2 and gallery

%Gallery LG2200 - 2008 subject 1
myFolder1 = 'C:\Users\Karan\Desktop\MS\Biometrics\Assignment 2\LG2200-2008-03-11_13\2008-03-11_13\02463'; %gallery
filePattern1 = fullfile(myFolder1, '*.tiff');
jpegFiles1 = dir(filePattern1);
templatep1 = zeros((length(jpegFiles1)*20),480);
mask1 = zeros((length(jpegFiles1)*20),480);
for k = 1:length(jpegFiles1)
  if k == 1;
  baseFileName1 = jpegFiles1(k).name;
  fullFileName1 = fullfile(myFolder1, baseFileName1);
  [template, mask] = createiristemplate(fullFileName1);
   for i = 1:20;
        for j = 1:480;
            templatep1(i,j) = template(i,j);
            mask1(i,j) = mask(i,j);     
        end
   end
  else
      baseFileName1 = jpegFiles1(k).name;
      fullFileName1 = fullfile(myFolder1, baseFileName1);
      [template, mask] = createiristemplate(fullFileName1);
      for i = 1:20;
        for j = 1:480;
            templatep1(i+((k-1)*20),j) = template(i,j);
            mask1(i+((k-1)*20),j) = mask(i,j);
        end
      end
  end
end

%Gallery LG2200 - 2008 subject 2
myFolder2 = 'C:\Users\Karan\Desktop\MS\Biometrics\Assignment 2\LG2200-2008-03-11_13\2008-03-11_13\04233'; %gallery
filePattern2 = fullfile(myFolder2, '*.tiff');
jpegFiles2 = dir(filePattern2);
templatep2 = zeros((length(jpegFiles2)*20),480);
mask2 = zeros((length(jpegFiles2)*20),480);
for k = 1:length(jpegFiles2)
  if k == 1;
  baseFileName2 = jpegFiles2(k).name;
  fullFileName2 = fullfile(myFolder2, baseFileName2);
  [template, mask] = createiristemplate(fullFileName2);
   for i = 1:20;
        for j = 1:480;
            templatep2(i,j) = template(i,j);
            mask2(i,j) = mask(i,j);     
        end
   end
  else
      baseFileName2 = jpegFiles2(k).name;
      fullFileName2 = fullfile(myFolder2, baseFileName2);
      [template, mask] = createiristemplate(fullFileName2);
      for i = 1:20;
        for j = 1:480;
            templatep2(i+((k-1)*20),j) = template(i,j);
            mask2(i+((k-1)*20),j) = mask(i,j);
        end
      end
  end
end

%Gallery LG2200 - 2008 subject 3
myFolder3 = 'C:\Users\Karan\Desktop\MS\Biometrics\Assignment 2\LG2200-2008-03-11_13\2008-03-11_13\04252'; %gallery
filePattern3 = fullfile(myFolder3, '*.tiff');
jpegFiles3 = dir(filePattern3);
templatep3 = zeros((length(jpegFiles3)*20),480);
mask3 = zeros((length(jpegFiles3)*20),480);
for k = 1:length(jpegFiles3)
  if k == 1;
  baseFileName3 = jpegFiles3(k).name;
  fullFileName3 = fullfile(myFolder3, baseFileName3);
  [template, mask] = createiristemplate(fullFileName3);
   for i = 1:20;
        for j = 1:480;
            templatep3(i,j) = template(i,j);
            mask3(i,j) = mask(i,j);     
        end
   end
  else
      baseFileName3 = jpegFiles3(k).name;
      fullFileName3 = fullfile(myFolder3, baseFileName3);
      [template, mask] = createiristemplate(fullFileName3);
      for i = 1:20;
        for j = 1:480;
            templatep3(i+((k-1)*20),j) = template(i,j);
            mask3(i+((k-1)*20),j) = mask(i,j);
        end
      end
  end
end

%Gallery LG2200 - 2008 subject 4
myFolder4 = 'C:\Users\Karan\Desktop\MS\Biometrics\Assignment 2\LG2200-2008-03-11_13\2008-03-11_13\04261'; %gallery
filePattern4 = fullfile(myFolder4, '*.tiff');
jpegFiles4 = dir(filePattern4);
templatep4 = zeros((length(jpegFiles4)*20),480);
mask4 = zeros((length(jpegFiles4)*20),480);
for k = 1:length(jpegFiles4)
  if k == 1;
  baseFileName4 = jpegFiles4(k).name;
  fullFileName4 = fullfile(myFolder4, baseFileName4);
  [template, mask] = createiristemplate(fullFileName4);
   for i = 1:20;
        for j = 1:480;
            templatep4(i,j) = template(i,j);
            mask4(i,j) = mask(i,j);     
        end
   end
  else
      baseFileName4 = jpegFiles4(k).name;
      fullFileName4 = fullfile(myFolder4, baseFileName4);
      [template, mask] = createiristemplate(fullFileName4);
      for i = 1:20;
        for j = 1:480;
            templatep4(i+((k-1)*20),j) = template(i,j);
            mask4(i+((k-1)*20),j) = mask(i,j);
        end
      end
  end
end

%Gallery LG2200 - 2008 subject 5
myFolder5 = 'C:\Users\Karan\Desktop\MS\Biometrics\Assignment 2\LG2200-2008-03-11_13\2008-03-11_13\04267'; %gallery
filePattern5 = fullfile(myFolder5, '*.tiff');
jpegFiles5 = dir(filePattern5);
templatep5 = zeros((length(jpegFiles5)*20),480);
mask5 = zeros((length(jpegFiles5)*20),480);
for k = 1:length(jpegFiles5)
  if k == 1;
  baseFileName5 = jpegFiles5(k).name;
  fullFileName5 = fullfile(myFolder5, baseFileName5);
  [template, mask] = createiristemplate(fullFileName5);
   for i = 1:20;
        for j = 1:480;
            templatep5(i,j) = template(i,j);
            mask5(i,j) = mask(i,j);     
        end
   end
  else
      baseFileName5 = jpegFiles5(k).name;
      fullFileName5 = fullfile(myFolder5, baseFileName5);
      [template, mask] = createiristemplate(fullFileName5);
      for i = 1:20;
        for j = 1:480;
            templatep5(i+((k-1)*20),j) = template(i,j);
            mask5(i+((k-1)*20),j) = mask(i,j);
        end
      end
  end
end

%Gallery LG2200 - 2008 subject 6
myFolder6 = 'C:\Users\Karan\Desktop\MS\Biometrics\Assignment 2\LG2200-2008-03-11_13\2008-03-11_13\04327'; %gallery
filePattern6 = fullfile(myFolder6, '*.tiff');
jpegFiles6 = dir(filePattern6);
templatep6 = zeros((length(jpegFiles6)*20),480);
mask6 = zeros((length(jpegFiles6)*20),480);
for k = 1:length(jpegFiles6)
  if k == 1;
  baseFileName6 = jpegFiles6(k).name;
  fullFileName6 = fullfile(myFolder6, baseFileName6);
  [template, mask] = createiristemplate(fullFileName6);
   for i = 1:20;
        for j = 1:480;
            templatep6(i,j) = template(i,j);
            mask6(i,j) = mask(i,j);     
        end
   end
  else
      baseFileName6 = jpegFiles6(k).name;
      fullFileName6 = fullfile(myFolder6, baseFileName6);
      [template, mask] = createiristemplate(fullFileName6);
      for i = 1:20;
        for j = 1:480;
            templatep6(i+((k-1)*20),j) = template(i,j);
            mask6(i+((k-1)*20),j) = mask(i,j);
        end
      end
  end
end

%Gallery LG2200 - 2008 subject 7
myFolder7 = 'C:\Users\Karan\Desktop\MS\Biometrics\Assignment 2\LG2200-2008-03-11_13\2008-03-11_13\04385'; %gallery
filePattern7 = fullfile(myFolder7, '*.tiff');
jpegFiles7 = dir(filePattern7);
templatep7 = zeros((length(jpegFiles7)*20),480);
mask7 = zeros((length(jpegFiles7)*20),480);
for k = 1:length(jpegFiles7)
  if k == 1;
  baseFileName7 = jpegFiles7(k).name;
  fullFileName7 = fullfile(myFolder7, baseFileName7);
  [template, mask] = createiristemplate(fullFileName7);
   for i = 1:20;
        for j = 1:480;
            templatep7(i,j) = template(i,j);
            mask7(i,j) = mask(i,j);     
        end
   end
  else
      baseFileName7 = jpegFiles7(k).name;
      fullFileName7 = fullfile(myFolder7, baseFileName7);
      [template, mask] = createiristemplate(fullFileName7);
      for i = 1:20;
        for j = 1:480;
            templatep7(i+((k-1)*20),j) = template(i,j);
            mask7(i+((k-1)*20),j) = mask(i,j);
        end
      end
  end
end

%Gallery LG2200 - 2008 subject 8
myFolder8 = 'C:\Users\Karan\Desktop\MS\Biometrics\Assignment 2\LG2200-2008-03-11_13\2008-03-11_13\04394'; %gallery
filePattern8 = fullfile(myFolder8, '*.tiff');
jpegFiles8 = dir(filePattern8);
templatep8 = zeros((length(jpegFiles8)*20),480);
mask8 = zeros((length(jpegFiles8)*20),480);
for k = 1:length(jpegFiles8)
  if k == 1;
  baseFileName8 = jpegFiles8(k).name;
  fullFileName8 = fullfile(myFolder8, baseFileName8);
  [template, mask] = createiristemplate(fullFileName8);
   for i = 1:20;
        for j = 1:480;
            templatep8(i,j) = template(i,j);
            mask8(i,j) = mask(i,j);     
        end
   end
  else
      baseFileName8 = jpegFiles8(k).name;
      fullFileName8 = fullfile(myFolder8, baseFileName8);
      [template, mask] = createiristemplate(fullFileName8);
      for i = 1:20;
        for j = 1:480;
            templatep8(i+((k-1)*20),j) = template(i,j);
            mask8(i+((k-1)*20),j) = mask(i,j);
        end
      end
  end
end

%Gallery LG2200 - 2008 subject 9
myFolder9 = 'C:\Users\Karan\Desktop\MS\Biometrics\Assignment 2\LG2200-2008-03-11_13\2008-03-11_13\04397'; %gallery
filePattern9 = fullfile(myFolder9, '*.tiff');
jpegFiles9 = dir(filePattern9);
templatep9 = zeros((length(jpegFiles9)*20),480);
mask9 = zeros((length(jpegFiles9)*20),480);
for k = 1:length(jpegFiles9)
  if k == 1;
  baseFileName9 = jpegFiles9(k).name;
  fullFileName9 = fullfile(myFolder9, baseFileName9);
  [template, mask] = createiristemplate(fullFileName9);
   for i = 1:20;
        for j = 1:480;
            templatep9(i,j) = template(i,j);
            mask9(i,j) = mask(i,j);     
        end
   end
  else
      baseFileName9 = jpegFiles9(k).name;
      fullFileName9 = fullfile(myFolder9, baseFileName9);
      [template, mask] = createiristemplate(fullFileName9);
      for i = 1:20;
        for j = 1:480;
            templatep9(i+((k-1)*20),j) = template(i,j);
            mask9(i+((k-1)*20),j) = mask(i,j);
        end
      end
  end
end

%Gallery LG2200 - 2008 subject 10
myFolder10 = 'C:\Users\Karan\Desktop\MS\Biometrics\Assignment 2\LG2200-2008-03-11_13\2008-03-11_13\04470'; %gallery
filePattern10 = fullfile(myFolder10, '*.tiff');
jpegFiles10 = dir(filePattern10);
templatep10 = zeros((length(jpegFiles10)*20),480);
mask10 = zeros((length(jpegFiles10)*20),480);
for k = 1:length(jpegFiles10)
  if k == 1;
  baseFileName10 = jpegFiles10(k).name;
  fullFileName10 = fullfile(myFolder10, baseFileName10);
  [template, mask] = createiristemplate(fullFileName10);
   for i = 1:20;
        for j = 1:480;
            templatep10(i,j) = template(i,j);
            mask10(i,j) = mask(i,j);     
        end
   end
  else
      baseFileName10 = jpegFiles10(k).name;
      fullFileName10 = fullfile(myFolder10, baseFileName10);
      [template, mask] = createiristemplate(fullFileName10);
      for i = 1:20;
        for j = 1:480;
            templatep10(i+((k-1)*20),j) = template(i,j);
            mask10(i+((k-1)*20),j) = mask(i,j);
        end
      end
  end
end

%probe LG4000 2010
[template_probe_1_1, mask_probe_1_1] = createiristemplate('C:\Users\Karan\Desktop\MS\Biometrics\Assignment 2\LG4000-2010-04-27_29\2010-04-27_29\02463\02463d2873.tiff');
[template_probe_1_2, mask_probe_1_2] = createiristemplate('C:\Users\Karan\Desktop\MS\Biometrics\Assignment 2\LG4000-2010-04-27_29\2010-04-27_29\04233\04233d2605.tiff');
[template_probe_1_3, mask_probe_1_3] = createiristemplate('C:\Users\Karan\Desktop\MS\Biometrics\Assignment 2\LG4000-2010-04-27_29\2010-04-27_29\04470\04470d2486.tiff');
[template_probe_1_4, mask_probe_1_4] = createiristemplate('C:\Users\Karan\Desktop\MS\Biometrics\Assignment 2\LG4000-2010-04-27_29\2010-04-27_29\05015\05015d1124.tiff');
[template_probe_1_5, mask_probe_1_5] = createiristemplate('C:\Users\Karan\Desktop\MS\Biometrics\Assignment 2\LG4000-2010-04-27_29\2010-04-27_29\05268\05268d110.tiff');
[template_probe_1_6, mask_probe_1_6] = createiristemplate('C:\Users\Karan\Desktop\MS\Biometrics\Assignment 2\LG4000-2010-04-27_29\2010-04-27_29\05301\05301d960.tiff');
[template_probe_1_7, mask_probe_1_7] = createiristemplate('C:\Users\Karan\Desktop\MS\Biometrics\Assignment 2\LG4000-2010-04-27_29\2010-04-27_29\05393\05393d548.tiff');
[template_probe_1_8, mask_probe_1_8] = createiristemplate('C:\Users\Karan\Desktop\MS\Biometrics\Assignment 2\LG4000-2010-04-27_29\2010-04-27_29\05513\05513d421.tiff');
[template_probe_1_9, mask_probe_1_9] = createiristemplate('C:\Users\Karan\Desktop\MS\Biometrics\Assignment 2\LG4000-2010-04-27_29\2010-04-27_29\05555\05555d841.tiff');
[template_probe_1_10, mask_probe_1_10] = createiristemplate('C:\Users\Karan\Desktop\MS\Biometrics\Assignment 2\LG4000-2010-04-27_29\2010-04-27_29\05616\05616d840.tiff');

%probe LG2200 2010
[template_probe_2_1, mask_probe_2_1] = createiristemplate('C:\Users\Karan\Desktop\MS\Biometrics\Assignment 2\LG2200-2010-04-27_29\2010-04-27_29\02463\02463d2883.tiff');
[template_probe_2_2, mask_probe_2_2] = createiristemplate('C:\Users\Karan\Desktop\MS\Biometrics\Assignment 2\LG2200-2010-04-27_29\2010-04-27_29\04233\04233d2607.tiff');
[template_probe_2_3, mask_probe_2_3] = createiristemplate('C:\Users\Karan\Desktop\MS\Biometrics\Assignment 2\LG2200-2010-04-27_29\2010-04-27_29\04327\04327d2166.tiff');
[template_probe_2_4, mask_probe_2_4] = createiristemplate('C:\Users\Karan\Desktop\MS\Biometrics\Assignment 2\LG2200-2010-04-27_29\2010-04-27_29\04385\04385d2285.tiff');
[template_probe_2_5, mask_probe_2_5] = createiristemplate('C:\Users\Karan\Desktop\MS\Biometrics\Assignment 2\LG2200-2010-04-27_29\2010-04-27_29\05669\05669d747.tiff');
[template_probe_2_6, mask_probe_2_6] = createiristemplate('C:\Users\Karan\Desktop\MS\Biometrics\Assignment 2\LG2200-2010-04-27_29\2010-04-27_29\05733\05733d602.tiff');
[template_probe_2_7, mask_probe_2_7] = createiristemplate('C:\Users\Karan\Desktop\MS\Biometrics\Assignment 2\LG2200-2010-04-27_29\2010-04-27_29\05752\05752d582.tiff');
[template_probe_2_8, mask_probe_2_8] = createiristemplate('C:\Users\Karan\Desktop\MS\Biometrics\Assignment 2\LG2200-2010-04-27_29\2010-04-27_29\05766\05766d575.tiff');
[template_probe_2_9, mask_probe_2_9] = createiristemplate('C:\Users\Karan\Desktop\MS\Biometrics\Assignment 2\LG2200-2010-04-27_29\2010-04-27_29\05774\05774d369.tiff');
[template_probe_2_10, mask_probe_2_10] = createiristemplate('C:\Users\Karan\Desktop\MS\Biometrics\Assignment 2\LG2200-2010-04-27_29\2010-04-27_29\05805\05805d493.tiff');

% getting hamming distance for probe1 subject1 to all images enrolled ingallery

for k = 1:length(jpegFiles1)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep1(i+((k-1)*20),j);
            temp_mask(i,j) = mask1(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_1, mask_probe_1_1, temp_template, temp_mask, scales);
end       
a(1,1) = min(temp_hd);
for k = 1:length(jpegFiles2)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep2(i+((k-1)*20),j);
            temp_mask(i,j) = mask2(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_1, mask_probe_1_1, temp_template, temp_mask, scales);
end       
a(1,2) = min(temp_hd);
for k = 1:length(jpegFiles1)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep3(i+((k-1)*20),j);
            temp_mask(i,j) = mask3(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_1, mask_probe_1_1, temp_template, temp_mask, scales);
end       
a(1,3) = min(temp_hd);
for k = 1:length(jpegFiles4)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep4(i+((k-1)*20),j);
            temp_mask(i,j) = mask4(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_1, mask_probe_1_1, temp_template, temp_mask, scales);
end       
a(1,4) = min(temp_hd);
for k = 1:length(jpegFiles5)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep5(i+((k-1)*20),j);
            temp_mask(i,j) = mask5(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_1, mask_probe_1_1, temp_template, temp_mask, scales);
end       
a(1,5) = min(temp_hd);
for k = 1:length(jpegFiles6)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep6(i+((k-1)*20),j);
            temp_mask(i,j) = mask6(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_1, mask_probe_1_1, temp_template, temp_mask, scales);
end       
a(1,6) = min(temp_hd);
for k = 1:length(jpegFiles7)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep7(i+((k-1)*20),j);
            temp_mask(i,j) = mask7(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_1, mask_probe_1_1, temp_template, temp_mask, scales);
end       
a(1,7) = min(temp_hd);
for k = 1:length(jpegFiles8)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep8(i+((k-1)*20),j);
            temp_mask(i,j) = mask8(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_1, mask_probe_1_1, temp_template, temp_mask, scales);
end       
a(1,8) = min(temp_hd);
for k = 1:length(jpegFiles9)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep9(i+((k-1)*20),j);
            temp_mask(i,j) = mask9(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_1, mask_probe_1_1, temp_template, temp_mask, scales);
end       
a(1,9) = min(temp_hd);
for k = 1:length(jpegFiles10)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep10(i+((k-1)*20),j);
            temp_mask(i,j) = mask10(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_1, mask_probe_1_1, temp_template, temp_mask, scales);
end       
a(1,10) = min(temp_hd);

% getting hamming distance for probe1 subject2 to all images enrolled ingallery

for k = 1:length(jpegFiles1)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep1(i+((k-1)*20),j);
            temp_mask(i,j) = mask1(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_2, mask_probe_1_2, temp_template, temp_mask, scales);
end       
a(2,1) = min(temp_hd);
for k = 1:length(jpegFiles2)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep2(i+((k-1)*20),j);
            temp_mask(i,j) = mask2(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_2, mask_probe_1_2, temp_template, temp_mask, scales);
end       
a(2,2) = min(temp_hd);
for k = 1:length(jpegFiles1)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep3(i+((k-1)*20),j);
            temp_mask(i,j) = mask3(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_2, mask_probe_1_2, temp_template, temp_mask, scales);
end       
a(2,3) = min(temp_hd);
for k = 1:length(jpegFiles4)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep4(i+((k-1)*20),j);
            temp_mask(i,j) = mask4(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_2, mask_probe_1_2, temp_template, temp_mask, scales);
end       
a(2,4) = min(temp_hd);
for k = 1:length(jpegFiles5)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep5(i+((k-1)*20),j);
            temp_mask(i,j) = mask5(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_2, mask_probe_1_2, temp_template, temp_mask, scales);
end       
a(2,5) = min(temp_hd);
for k = 1:length(jpegFiles6)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep6(i+((k-1)*20),j);
            temp_mask(i,j) = mask6(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_2, mask_probe_1_2, temp_template, temp_mask, scales);
end       
a(2,6) = min(temp_hd);
for k = 1:length(jpegFiles7)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep7(i+((k-1)*20),j);
            temp_mask(i,j) = mask7(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_2, mask_probe_1_2, temp_template, temp_mask, scales);
end       
a(2,7) = min(temp_hd);
for k = 1:length(jpegFiles8)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep8(i+((k-1)*20),j);
            temp_mask(i,j) = mask8(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_2, mask_probe_1_2, temp_template, temp_mask, scales);
end       
a(2,8) = min(temp_hd);
for k = 1:length(jpegFiles9)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep9(i+((k-1)*20),j);
            temp_mask(i,j) = mask9(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_2, mask_probe_1_2, temp_template, temp_mask, scales);
end       
a(2,9) = min(temp_hd);
for k = 1:length(jpegFiles10)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep10(i+((k-1)*20),j);
            temp_mask(i,j) = mask10(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_2, mask_probe_1_2, temp_template, temp_mask, scales);
end       
a(2,10) = min(temp_hd);

% getting hamming distance for probe1 subject3 to all images enrolled ingallery

for k = 1:length(jpegFiles1)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep1(i+((k-1)*20),j);
            temp_mask(i,j) = mask1(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_3, mask_probe_1_3, temp_template, temp_mask, scales);
end       
a(3,1) = min(temp_hd);
for k = 1:length(jpegFiles2)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep2(i+((k-1)*20),j);
            temp_mask(i,j) = mask2(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_3, mask_probe_1_3, temp_template, temp_mask, scales);
end       
a(3,2) = min(temp_hd);
for k = 1:length(jpegFiles1)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep3(i+((k-1)*20),j);
            temp_mask(i,j) = mask3(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_3, mask_probe_1_3, temp_template, temp_mask, scales);
end       
a(3,3) = min(temp_hd);
for k = 1:length(jpegFiles4)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep4(i+((k-1)*20),j);
            temp_mask(i,j) = mask4(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_3, mask_probe_1_3, temp_template, temp_mask, scales);
end       
a(3,4) = min(temp_hd);
for k = 1:length(jpegFiles5)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep5(i+((k-1)*20),j);
            temp_mask(i,j) = mask5(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_3, mask_probe_1_3, temp_template, temp_mask, scales);
end       
a(3,5) = min(temp_hd);
for k = 1:length(jpegFiles6)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep6(i+((k-1)*20),j);
            temp_mask(i,j) = mask6(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_3, mask_probe_1_3, temp_template, temp_mask, scales);
end       
a(3,6) = min(temp_hd);
for k = 1:length(jpegFiles7)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep7(i+((k-1)*20),j);
            temp_mask(i,j) = mask7(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_3, mask_probe_1_3, temp_template, temp_mask, scales);
end       
a(3,7) = min(temp_hd);
for k = 1:length(jpegFiles8)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep8(i+((k-1)*20),j);
            temp_mask(i,j) = mask8(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_3, mask_probe_1_3, temp_template, temp_mask, scales);
end       
a(3,8) = min(temp_hd);
for k = 1:length(jpegFiles9)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep9(i+((k-1)*20),j);
            temp_mask(i,j) = mask9(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_3, mask_probe_1_3, temp_template, temp_mask, scales);
end       
a(3,9) = min(temp_hd);
for k = 1:length(jpegFiles10)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep10(i+((k-1)*20),j);
            temp_mask(i,j) = mask10(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_3, mask_probe_1_3, temp_template, temp_mask, scales);
end       
a(3,10) = min(temp_hd);

% getting hamming distance for probe1 subject4 to all images enrolled ingallery

for k = 1:length(jpegFiles1)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep1(i+((k-1)*20),j);
            temp_mask(i,j) = mask1(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_4, mask_probe_1_4, temp_template, temp_mask, scales);
end       
a(4,1) = min(temp_hd);
for k = 1:length(jpegFiles2)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep2(i+((k-1)*20),j);
            temp_mask(i,j) = mask2(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_4, mask_probe_1_4, temp_template, temp_mask, scales);
end       
a(4,2) = min(temp_hd);
for k = 1:length(jpegFiles1)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep3(i+((k-1)*20),j);
            temp_mask(i,j) = mask3(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_4, mask_probe_1_4, temp_template, temp_mask, scales);
end       
a(4,3) = min(temp_hd);
for k = 1:length(jpegFiles4)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep4(i+((k-1)*20),j);
            temp_mask(i,j) = mask4(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_4, mask_probe_1_4, temp_template, temp_mask, scales);
end       
a(4,4) = min(temp_hd);
for k = 1:length(jpegFiles5)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep5(i+((k-1)*20),j);
            temp_mask(i,j) = mask5(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_4, mask_probe_1_4, temp_template, temp_mask, scales);
end       
a(4,5) = min(temp_hd);
for k = 1:length(jpegFiles6)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep6(i+((k-1)*20),j);
            temp_mask(i,j) = mask6(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_4, mask_probe_1_4, temp_template, temp_mask, scales);
end       
a(4,6) = min(temp_hd);
for k = 1:length(jpegFiles7)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep7(i+((k-1)*20),j);
            temp_mask(i,j) = mask7(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_4, mask_probe_1_4, temp_template, temp_mask, scales);
end       
a(4,7) = min(temp_hd);
for k = 1:length(jpegFiles8)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep8(i+((k-1)*20),j);
            temp_mask(i,j) = mask8(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_4, mask_probe_1_4, temp_template, temp_mask, scales);
end       
a(4,8) = min(temp_hd);
for k = 1:length(jpegFiles9)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep9(i+((k-1)*20),j);
            temp_mask(i,j) = mask9(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_4, mask_probe_1_4, temp_template, temp_mask, scales);
end       
a(4,9) = min(temp_hd);
for k = 1:length(jpegFiles10)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep10(i+((k-1)*20),j);
            temp_mask(i,j) = mask10(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_4, mask_probe_1_4, temp_template, temp_mask, scales);
end       
a(4,10) = min(temp_hd);

% getting hamming distance for probe1 subject5 to all images enrolled ingallery

for k = 1:length(jpegFiles1)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep1(i+((k-1)*20),j);
            temp_mask(i,j) = mask1(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_5, mask_probe_1_5, temp_template, temp_mask, scales);
end       
a(5,1) = min(temp_hd);
for k = 1:length(jpegFiles2)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep2(i+((k-1)*20),j);
            temp_mask(i,j) = mask2(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_5, mask_probe_1_5, temp_template, temp_mask, scales);
end       
a(5,2) = min(temp_hd);
for k = 1:length(jpegFiles1)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep3(i+((k-1)*20),j);
            temp_mask(i,j) = mask3(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_5, mask_probe_1_5, temp_template, temp_mask, scales);
end       
a(5,3) = min(temp_hd);
for k = 1:length(jpegFiles4)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep4(i+((k-1)*20),j);
            temp_mask(i,j) = mask4(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_5, mask_probe_1_5, temp_template, temp_mask, scales);
end       
a(5,4) = min(temp_hd);
for k = 1:length(jpegFiles5)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep5(i+((k-1)*20),j);
            temp_mask(i,j) = mask5(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_5, mask_probe_1_5, temp_template, temp_mask, scales);
end       
a(5,5) = min(temp_hd);
for k = 1:length(jpegFiles6)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep6(i+((k-1)*20),j);
            temp_mask(i,j) = mask6(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_5, mask_probe_1_5, temp_template, temp_mask, scales);
end       
a(5,6) = min(temp_hd);
for k = 1:length(jpegFiles7)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep7(i+((k-1)*20),j);
            temp_mask(i,j) = mask7(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_5, mask_probe_1_5, temp_template, temp_mask, scales);
end       
a(5,7) = min(temp_hd);
for k = 1:length(jpegFiles8)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep8(i+((k-1)*20),j);
            temp_mask(i,j) = mask8(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_5, mask_probe_1_5, temp_template, temp_mask, scales);
end       
a(5,8) = min(temp_hd);
for k = 1:length(jpegFiles9)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep9(i+((k-1)*20),j);
            temp_mask(i,j) = mask9(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_5, mask_probe_1_5, temp_template, temp_mask, scales);
end       
a(5,9) = min(temp_hd);
for k = 1:length(jpegFiles10)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep10(i+((k-1)*20),j);
            temp_mask(i,j) = mask10(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_5, mask_probe_1_5, temp_template, temp_mask, scales);
end       
a(5,10) = min(temp_hd);

% getting hamming distance for probe1 subject6 to all images enrolled ingallery

for k = 1:length(jpegFiles1)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep1(i+((k-1)*20),j);
            temp_mask(i,j) = mask1(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_6, mask_probe_1_6, temp_template, temp_mask, scales);
end       
a(6,1) = min(temp_hd);
for k = 1:length(jpegFiles2)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep2(i+((k-1)*20),j);
            temp_mask(i,j) = mask2(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_6, mask_probe_1_6, temp_template, temp_mask, scales);
end       
a(6,2) = min(temp_hd);
for k = 1:length(jpegFiles1)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep3(i+((k-1)*20),j);
            temp_mask(i,j) = mask3(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_6, mask_probe_1_6, temp_template, temp_mask, scales);
end       
a(6,3) = min(temp_hd);
for k = 1:length(jpegFiles4)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep4(i+((k-1)*20),j);
            temp_mask(i,j) = mask4(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_6, mask_probe_1_6, temp_template, temp_mask, scales);
end       
a(6,4) = min(temp_hd);
for k = 1:length(jpegFiles5)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep5(i+((k-1)*20),j);
            temp_mask(i,j) = mask5(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_6, mask_probe_1_6, temp_template, temp_mask, scales);
end       
a(6,5) = min(temp_hd);
for k = 1:length(jpegFiles6)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep6(i+((k-1)*20),j);
            temp_mask(i,j) = mask6(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_6, mask_probe_1_6, temp_template, temp_mask, scales);
end       
a(6,6) = min(temp_hd);
for k = 1:length(jpegFiles7)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep7(i+((k-1)*20),j);
            temp_mask(i,j) = mask7(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_6, mask_probe_1_6, temp_template, temp_mask, scales);
end       
a(6,7) = min(temp_hd);
for k = 1:length(jpegFiles8)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep8(i+((k-1)*20),j);
            temp_mask(i,j) = mask8(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_6, mask_probe_1_6, temp_template, temp_mask, scales);
end       
a(6,8) = min(temp_hd);
for k = 1:length(jpegFiles9)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep9(i+((k-1)*20),j);
            temp_mask(i,j) = mask9(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_6, mask_probe_1_6, temp_template, temp_mask, scales);
end       
a(6,9) = min(temp_hd);
for k = 1:length(jpegFiles10)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep10(i+((k-1)*20),j);
            temp_mask(i,j) = mask10(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_6, mask_probe_1_6, temp_template, temp_mask, scales);
end       
a(6,10) = min(temp_hd);

% getting hamming distance for probe1 subject7 to all images enrolled ingallery

for k = 1:length(jpegFiles1)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep1(i+((k-1)*20),j);
            temp_mask(i,j) = mask1(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_7, mask_probe_1_7, temp_template, temp_mask, scales);
end       
a(7,1) = min(temp_hd);
for k = 1:length(jpegFiles2)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep2(i+((k-1)*20),j);
            temp_mask(i,j) = mask2(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_7, mask_probe_1_7, temp_template, temp_mask, scales);
end       
a(7,2) = min(temp_hd);
for k = 1:length(jpegFiles1)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep3(i+((k-1)*20),j);
            temp_mask(i,j) = mask3(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_7, mask_probe_1_7, temp_template, temp_mask, scales);
end       
a(7,3) = min(temp_hd);
for k = 1:length(jpegFiles4)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep4(i+((k-1)*20),j);
            temp_mask(i,j) = mask4(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_7, mask_probe_1_7, temp_template, temp_mask, scales);
end       
a(7,4) = min(temp_hd);
for k = 1:length(jpegFiles5)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep5(i+((k-1)*20),j);
            temp_mask(i,j) = mask5(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_7, mask_probe_1_7, temp_template, temp_mask, scales);
end       
a(7,5) = min(temp_hd);
for k = 1:length(jpegFiles6)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep6(i+((k-1)*20),j);
            temp_mask(i,j) = mask6(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_7, mask_probe_1_7, temp_template, temp_mask, scales);
end       
a(7,6) = min(temp_hd);
for k = 1:length(jpegFiles7)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep7(i+((k-1)*20),j);
            temp_mask(i,j) = mask7(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_7, mask_probe_1_7, temp_template, temp_mask, scales);
end       
a(7,7) = min(temp_hd);
for k = 1:length(jpegFiles8)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep8(i+((k-1)*20),j);
            temp_mask(i,j) = mask8(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_7, mask_probe_1_7, temp_template, temp_mask, scales);
end       
a(7,8) = min(temp_hd);
for k = 1:length(jpegFiles9)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep9(i+((k-1)*20),j);
            temp_mask(i,j) = mask9(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_7, mask_probe_1_7, temp_template, temp_mask, scales);
end       
a(7,9) = min(temp_hd);
for k = 1:length(jpegFiles10)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep10(i+((k-1)*20),j);
            temp_mask(i,j) = mask10(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_7, mask_probe_1_7, temp_template, temp_mask, scales);
end       
a(7,10) = min(temp_hd);

% getting hamming distance for probe1 subject8 to all images enrolled ingallery

for k = 1:length(jpegFiles1)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep1(i+((k-1)*20),j);
            temp_mask(i,j) = mask1(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_8, mask_probe_1_8, temp_template, temp_mask, scales);
end       
a(8,1) = min(temp_hd);
for k = 1:length(jpegFiles2)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep2(i+((k-1)*20),j);
            temp_mask(i,j) = mask2(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_8, mask_probe_1_8, temp_template, temp_mask, scales);
end       
a(8,2) = min(temp_hd);
for k = 1:length(jpegFiles1)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep3(i+((k-1)*20),j);
            temp_mask(i,j) = mask3(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_8, mask_probe_1_8, temp_template, temp_mask, scales);
end       
a(8,3) = min(temp_hd);
for k = 1:length(jpegFiles4)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep4(i+((k-1)*20),j);
            temp_mask(i,j) = mask4(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_8, mask_probe_1_8, temp_template, temp_mask, scales);
end       
a(8,4) = min(temp_hd);
for k = 1:length(jpegFiles5)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep5(i+((k-1)*20),j);
            temp_mask(i,j) = mask5(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_8, mask_probe_1_8, temp_template, temp_mask, scales);
end       
a(8,5) = min(temp_hd);
for k = 1:length(jpegFiles6)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep6(i+((k-1)*20),j);
            temp_mask(i,j) = mask6(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_8, mask_probe_1_8, temp_template, temp_mask, scales);
end       
a(8,6) = min(temp_hd);
for k = 1:length(jpegFiles7)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep7(i+((k-1)*20),j);
            temp_mask(i,j) = mask7(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_8, mask_probe_1_8, temp_template, temp_mask, scales);
end       
a(8,7) = min(temp_hd);
for k = 1:length(jpegFiles8)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep8(i+((k-1)*20),j);
            temp_mask(i,j) = mask8(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_8, mask_probe_1_8, temp_template, temp_mask, scales);
end       
a(8,8) = min(temp_hd);
for k = 1:length(jpegFiles9)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep9(i+((k-1)*20),j);
            temp_mask(i,j) = mask9(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_8, mask_probe_1_8, temp_template, temp_mask, scales);
end       
a(8,9) = min(temp_hd);
for k = 1:length(jpegFiles10)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep10(i+((k-1)*20),j);
            temp_mask(i,j) = mask10(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_8, mask_probe_1_8, temp_template, temp_mask, scales);
end       
a(8,10) = min(temp_hd);

% getting hamming distance for probe1 subject9 to all images enrolled ingallery

for k = 1:length(jpegFiles1)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep1(i+((k-1)*20),j);
            temp_mask(i,j) = mask1(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_9, mask_probe_1_9, temp_template, temp_mask, scales);
end       
a(9,1) = min(temp_hd);
for k = 1:length(jpegFiles2)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep2(i+((k-1)*20),j);
            temp_mask(i,j) = mask2(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_9, mask_probe_1_9, temp_template, temp_mask, scales);
end       
a(9,2) = min(temp_hd);
for k = 1:length(jpegFiles1)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep3(i+((k-1)*20),j);
            temp_mask(i,j) = mask3(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_9, mask_probe_1_9, temp_template, temp_mask, scales);
end       
a(9,3) = min(temp_hd);
for k = 1:length(jpegFiles4)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep4(i+((k-1)*20),j);
            temp_mask(i,j) = mask4(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_9, mask_probe_1_9, temp_template, temp_mask, scales);
end       
a(9,4) = min(temp_hd);
for k = 1:length(jpegFiles5)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep5(i+((k-1)*20),j);
            temp_mask(i,j) = mask5(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_9, mask_probe_1_9, temp_template, temp_mask, scales);
end       
a(9,5) = min(temp_hd);
for k = 1:length(jpegFiles6)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep6(i+((k-1)*20),j);
            temp_mask(i,j) = mask6(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_9, mask_probe_1_9, temp_template, temp_mask, scales);
end       
a(9,6) = min(temp_hd);
for k = 1:length(jpegFiles7)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep7(i+((k-1)*20),j);
            temp_mask(i,j) = mask7(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_9, mask_probe_1_9, temp_template, temp_mask, scales);
end       
a(9,7) = min(temp_hd);
for k = 1:length(jpegFiles8)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep8(i+((k-1)*20),j);
            temp_mask(i,j) = mask8(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_9, mask_probe_1_9, temp_template, temp_mask, scales);
end       
a(9,8) = min(temp_hd);
for k = 1:length(jpegFiles9)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep9(i+((k-1)*20),j);
            temp_mask(i,j) = mask9(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_9, mask_probe_1_9, temp_template, temp_mask, scales);
end       
a(9,9) = min(temp_hd);
for k = 1:length(jpegFiles10)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep10(i+((k-1)*20),j);
            temp_mask(i,j) = mask10(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_9, mask_probe_1_9, temp_template, temp_mask, scales);
end       
a(9,10) = min(temp_hd);

% getting hamming distance for probe1 subject10 to all images enrolled ingallery

for k = 1:length(jpegFiles1)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep1(i+((k-1)*20),j);
            temp_mask(i,j) = mask1(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_10, mask_probe_1_10, temp_template, temp_mask, scales);
end       
a(10,1) = min(temp_hd);
for k = 1:length(jpegFiles2)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep2(i+((k-1)*20),j);
            temp_mask(i,j) = mask2(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_10, mask_probe_1_10, temp_template, temp_mask, scales);
end       
a(10,2) = min(temp_hd);
for k = 1:length(jpegFiles1)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep3(i+((k-1)*20),j);
            temp_mask(i,j) = mask3(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_10, mask_probe_1_10, temp_template, temp_mask, scales);
end       
a(10,3) = min(temp_hd);
for k = 1:length(jpegFiles4)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep4(i+((k-1)*20),j);
            temp_mask(i,j) = mask4(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_10, mask_probe_1_10, temp_template, temp_mask, scales);
end       
a(10,4) = min(temp_hd);
for k = 1:length(jpegFiles5)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep5(i+((k-1)*20),j);
            temp_mask(i,j) = mask5(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_10, mask_probe_1_10, temp_template, temp_mask, scales);
end       
a(10,5) = min(temp_hd);
for k = 1:length(jpegFiles6)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep6(i+((k-1)*20),j);
            temp_mask(i,j) = mask6(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_10, mask_probe_1_10, temp_template, temp_mask, scales);
end       
a(10,6) = min(temp_hd);
for k = 1:length(jpegFiles7)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep7(i+((k-1)*20),j);
            temp_mask(i,j) = mask7(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_10, mask_probe_1_10, temp_template, temp_mask, scales);
end       
a(10,7) = min(temp_hd);
for k = 1:length(jpegFiles8)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep8(i+((k-1)*20),j);
            temp_mask(i,j) = mask8(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_10, mask_probe_1_10, temp_template, temp_mask, scales);
end       
a(10,8) = min(temp_hd);
for k = 1:length(jpegFiles9)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep9(i+((k-1)*20),j);
            temp_mask(i,j) = mask9(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_10, mask_probe_1_10, temp_template, temp_mask, scales);
end       
a(10,9) = min(temp_hd);
for k = 1:length(jpegFiles10)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep10(i+((k-1)*20),j);
            temp_mask(i,j) = mask10(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_10, mask_probe_1_10, temp_template, temp_mask, scales);
end       
a(10,10) = min(temp_hd);


% getting hamming distance for probe2 subject1 to all images enrolled ingallery

for k = 1:length(jpegFiles1)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep1(i+((k-1)*20),j);
            temp_mask(i,j) = mask1(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_1, mask_probe_2_1, temp_template, temp_mask, scales);
end       
b(1,1) = min(temp_hd);
for k = 1:length(jpegFiles2)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep2(i+((k-1)*20),j);
            temp_mask(i,j) = mask2(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_1, mask_probe_2_1, temp_template, temp_mask, scales);
end       
b(1,2) = min(temp_hd);
for k = 1:length(jpegFiles1)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep3(i+((k-1)*20),j);
            temp_mask(i,j) = mask3(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_1, mask_probe_2_1, temp_template, temp_mask, scales);
end       
b(1,3) = min(temp_hd);
for k = 1:length(jpegFiles4)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep4(i+((k-1)*20),j);
            temp_mask(i,j) = mask4(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_1, mask_probe_2_1, temp_template, temp_mask, scales);
end       
b(1,4) = min(temp_hd);
for k = 1:length(jpegFiles5)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep5(i+((k-1)*20),j);
            temp_mask(i,j) = mask5(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_1, mask_probe_2_1, temp_template, temp_mask, scales);
end       
b(1,5) = min(temp_hd);
for k = 1:length(jpegFiles6)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep6(i+((k-1)*20),j);
            temp_mask(i,j) = mask6(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_1, mask_probe_2_1, temp_template, temp_mask, scales);
end       
b(1,6) = min(temp_hd);
for k = 1:length(jpegFiles7)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep7(i+((k-1)*20),j);
            temp_mask(i,j) = mask7(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_1_1, mask_probe_1_1, temp_template, temp_mask, scales);
end       
b(1,7) = min(temp_hd);
for k = 1:length(jpegFiles8)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep8(i+((k-1)*20),j);
            temp_mask(i,j) = mask8(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_1, mask_probe_2_1, temp_template, temp_mask, scales);
end       
b(1,8) = min(temp_hd);
for k = 1:length(jpegFiles9)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep9(i+((k-1)*20),j);
            temp_mask(i,j) = mask9(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_1, mask_probe_2_1, temp_template, temp_mask, scales);
end       
b(1,9) = min(temp_hd);
for k = 1:length(jpegFiles10)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep10(i+((k-1)*20),j);
            temp_mask(i,j) = mask10(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_1, mask_probe_2_1, temp_template, temp_mask, scales);
end       
b(1,10) = min(temp_hd);

% getting hamming distance for probe2 subject2 to all images enrolled ingallery

for k = 1:length(jpegFiles1)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep1(i+((k-1)*20),j);
            temp_mask(i,j) = mask1(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_2, mask_probe_2_2, temp_template, temp_mask, scales);
end       
b(2,1) = min(temp_hd);
for k = 1:length(jpegFiles2)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep2(i+((k-1)*20),j);
            temp_mask(i,j) = mask2(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_2, mask_probe_2_2, temp_template, temp_mask, scales);
end       
b(2,2) = min(temp_hd);
for k = 1:length(jpegFiles1)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep3(i+((k-1)*20),j);
            temp_mask(i,j) = mask3(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_2, mask_probe_2_2, temp_template, temp_mask, scales);
end       
b(2,3) = min(temp_hd);
for k = 1:length(jpegFiles4)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep4(i+((k-1)*20),j);
            temp_mask(i,j) = mask4(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_2, mask_probe_2_2, temp_template, temp_mask, scales);
end       
b(2,4) = min(temp_hd);
for k = 1:length(jpegFiles5)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep5(i+((k-1)*20),j);
            temp_mask(i,j) = mask5(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_2, mask_probe_2_2, temp_template, temp_mask, scales);
end       
b(2,5) = min(temp_hd);
for k = 1:length(jpegFiles6)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep6(i+((k-1)*20),j);
            temp_mask(i,j) = mask6(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_2, mask_probe_2_2, temp_template, temp_mask, scales);
end       
b(2,6) = min(temp_hd);
for k = 1:length(jpegFiles7)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep7(i+((k-1)*20),j);
            temp_mask(i,j) = mask7(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_2, mask_probe_2_2, temp_template, temp_mask, scales);
end       
b(2,7) = min(temp_hd);
for k = 1:length(jpegFiles8)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep8(i+((k-1)*20),j);
            temp_mask(i,j) = mask8(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_2, mask_probe_2_2, temp_template, temp_mask, scales);
end       
b(2,8) = min(temp_hd);
for k = 1:length(jpegFiles9)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep9(i+((k-1)*20),j);
            temp_mask(i,j) = mask9(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_2, mask_probe_2_2, temp_template, temp_mask, scales);
end       
b(2,9) = min(temp_hd);
for k = 1:length(jpegFiles10)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep10(i+((k-1)*20),j);
            temp_mask(i,j) = mask10(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_2, mask_probe_2_2, temp_template, temp_mask, scales);
end       
b(2,10) = min(temp_hd);

% getting hamming distance for probe2 subject3 to all images enrolled ingallery

for k = 1:length(jpegFiles1)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep1(i+((k-1)*20),j);
            temp_mask(i,j) = mask1(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_3, mask_probe_2_3, temp_template, temp_mask, scales);
end       
b(3,1) = min(temp_hd);
for k = 1:length(jpegFiles2)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep2(i+((k-1)*20),j);
            temp_mask(i,j) = mask2(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_3, mask_probe_2_3, temp_template, temp_mask, scales);
end       
b(3,2) = min(temp_hd);
for k = 1:length(jpegFiles1)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep3(i+((k-1)*20),j);
            temp_mask(i,j) = mask3(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_3, mask_probe_2_3, temp_template, temp_mask, scales);
end       
b(3,3) = min(temp_hd);
for k = 1:length(jpegFiles4)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep4(i+((k-1)*20),j);
            temp_mask(i,j) = mask4(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_3, mask_probe_2_3, temp_template, temp_mask, scales);
end       
b(3,4) = min(temp_hd);
for k = 1:length(jpegFiles5)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep5(i+((k-1)*20),j);
            temp_mask(i,j) = mask5(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_3, mask_probe_2_3, temp_template, temp_mask, scales);
end       
b(3,5) = min(temp_hd);
for k = 1:length(jpegFiles6)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep6(i+((k-1)*20),j);
            temp_mask(i,j) = mask6(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_3, mask_probe_2_3, temp_template, temp_mask, scales);
end       
b(3,6) = min(temp_hd);
for k = 1:length(jpegFiles7)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep7(i+((k-1)*20),j);
            temp_mask(i,j) = mask7(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_3, mask_probe_2_3, temp_template, temp_mask, scales);
end       
b(3,7) = min(temp_hd);
for k = 1:length(jpegFiles8)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep8(i+((k-1)*20),j);
            temp_mask(i,j) = mask8(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_3, mask_probe_2_3, temp_template, temp_mask, scales);
end       
b(3,8) = min(temp_hd);
for k = 1:length(jpegFiles9)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep9(i+((k-1)*20),j);
            temp_mask(i,j) = mask9(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_3, mask_probe_2_3, temp_template, temp_mask, scales);
end       
b(3,9) = min(temp_hd);
for k = 1:length(jpegFiles10)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep10(i+((k-1)*20),j);
            temp_mask(i,j) = mask10(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_3, mask_probe_2_3, temp_template, temp_mask, scales);
end       
b(3,10) = min(temp_hd);

% getting hamming distance for probe2 subject4 to all images enrolled ingallery

for k = 1:length(jpegFiles1)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep1(i+((k-1)*20),j);
            temp_mask(i,j) = mask1(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_4, mask_probe_2_4, temp_template, temp_mask, scales);
end       
b(4,1) = min(temp_hd);
for k = 1:length(jpegFiles2)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep2(i+((k-1)*20),j);
            temp_mask(i,j) = mask2(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_4, mask_probe_2_4, temp_template, temp_mask, scales);
end       
b(4,2) = min(temp_hd);
for k = 1:length(jpegFiles1)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep3(i+((k-1)*20),j);
            temp_mask(i,j) = mask3(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_4, mask_probe_2_4, temp_template, temp_mask, scales);
end       
b(4,3) = min(temp_hd);
for k = 1:length(jpegFiles4)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep4(i+((k-1)*20),j);
            temp_mask(i,j) = mask4(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_4, mask_probe_2_4, temp_template, temp_mask, scales);
end       
b(4,4) = min(temp_hd);
for k = 1:length(jpegFiles5)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep5(i+((k-1)*20),j);
            temp_mask(i,j) = mask5(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_4, mask_probe_2_4, temp_template, temp_mask, scales);
end       
b(4,5) = min(temp_hd);
for k = 1:length(jpegFiles6)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep6(i+((k-1)*20),j);
            temp_mask(i,j) = mask6(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_4, mask_probe_2_4, temp_template, temp_mask, scales);
end       
b(4,6) = min(temp_hd);
for k = 1:length(jpegFiles7)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep7(i+((k-1)*20),j);
            temp_mask(i,j) = mask7(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_4, mask_probe_2_4, temp_template, temp_mask, scales);
end       
b(4,7) = min(temp_hd);
for k = 1:length(jpegFiles8)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep8(i+((k-1)*20),j);
            temp_mask(i,j) = mask8(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_4, mask_probe_2_4, temp_template, temp_mask, scales);
end       
b(4,8) = min(temp_hd);
for k = 1:length(jpegFiles9)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep9(i+((k-1)*20),j);
            temp_mask(i,j) = mask9(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_4, mask_probe_2_4, temp_template, temp_mask, scales);
end       
b(4,9) = min(temp_hd);
for k = 1:length(jpegFiles10)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep10(i+((k-1)*20),j);
            temp_mask(i,j) = mask10(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_4, mask_probe_2_4, temp_template, temp_mask, scales);
end       
b(4,10) = min(temp_hd);

% getting hamming distance for probe2 subject5 to all images enrolled ingallery

for k = 1:length(jpegFiles1)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep1(i+((k-1)*20),j);
            temp_mask(i,j) = mask1(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_5, mask_probe_2_5, temp_template, temp_mask, scales);
end       
b(5,1) = min(temp_hd);
for k = 1:length(jpegFiles2)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep2(i+((k-1)*20),j);
            temp_mask(i,j) = mask2(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_5, mask_probe_2_5, temp_template, temp_mask, scales);
end       
b(5,2) = min(temp_hd);
for k = 1:length(jpegFiles1)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep3(i+((k-1)*20),j);
            temp_mask(i,j) = mask3(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_5, mask_probe_2_5, temp_template, temp_mask, scales);
end       
b(5,3) = min(temp_hd);
for k = 1:length(jpegFiles4)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep4(i+((k-1)*20),j);
            temp_mask(i,j) = mask4(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_5, mask_probe_2_5, temp_template, temp_mask, scales);
end       
b(5,4) = min(temp_hd);
for k = 1:length(jpegFiles5)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep5(i+((k-1)*20),j);
            temp_mask(i,j) = mask5(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_5, mask_probe_2_5, temp_template, temp_mask, scales);
end       
b(5,5) = min(temp_hd);
for k = 1:length(jpegFiles6)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep6(i+((k-1)*20),j);
            temp_mask(i,j) = mask6(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_5, mask_probe_2_5, temp_template, temp_mask, scales);
end       
b(5,6) = min(temp_hd);
for k = 1:length(jpegFiles7)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep7(i+((k-1)*20),j);
            temp_mask(i,j) = mask7(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_5, mask_probe_2_5, temp_template, temp_mask, scales);
end       
b(5,7) = min(temp_hd);
for k = 1:length(jpegFiles8)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep8(i+((k-1)*20),j);
            temp_mask(i,j) = mask8(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_5, mask_probe_2_5, temp_template, temp_mask, scales);
end       
b(5,8) = min(temp_hd);
for k = 1:length(jpegFiles9)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep9(i+((k-1)*20),j);
            temp_mask(i,j) = mask9(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_5, mask_probe_2_5, temp_template, temp_mask, scales);
end       
b(5,9) = min(temp_hd);
for k = 1:length(jpegFiles10)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep10(i+((k-1)*20),j);
            temp_mask(i,j) = mask10(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_5, mask_probe_2_5, temp_template, temp_mask, scales);
end       
b(5,10) = min(temp_hd);

% getting hamming distance for probe1 subject6 to all images enrolled ingallery

for k = 1:length(jpegFiles1)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep1(i+((k-1)*20),j);
            temp_mask(i,j) = mask1(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_6, mask_probe_2_6, temp_template, temp_mask, scales);
end       
b(6,1) = min(temp_hd);
for k = 1:length(jpegFiles2)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep2(i+((k-1)*20),j);
            temp_mask(i,j) = mask2(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_6, mask_probe_2_6, temp_template, temp_mask, scales);
end       
b(6,2) = min(temp_hd);
for k = 1:length(jpegFiles1)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep3(i+((k-1)*20),j);
            temp_mask(i,j) = mask3(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_6, mask_probe_2_6, temp_template, temp_mask, scales);
end       
b(6,3) = min(temp_hd);
for k = 1:length(jpegFiles4)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep4(i+((k-1)*20),j);
            temp_mask(i,j) = mask4(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_6, mask_probe_2_6, temp_template, temp_mask, scales);
end       
b(6,4) = min(temp_hd);
for k = 1:length(jpegFiles5)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep5(i+((k-1)*20),j);
            temp_mask(i,j) = mask5(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_6, mask_probe_2_6, temp_template, temp_mask, scales);
end       
b(6,5) = min(temp_hd);
for k = 1:length(jpegFiles6)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep6(i+((k-1)*20),j);
            temp_mask(i,j) = mask6(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_6, mask_probe_2_6, temp_template, temp_mask, scales);
end       
b(6,6) = min(temp_hd);
for k = 1:length(jpegFiles7)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep7(i+((k-1)*20),j);
            temp_mask(i,j) = mask7(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_6, mask_probe_2_6, temp_template, temp_mask, scales);
end       
b(6,7) = min(temp_hd);
for k = 1:length(jpegFiles8)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep8(i+((k-1)*20),j);
            temp_mask(i,j) = mask8(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_6, mask_probe_2_6, temp_template, temp_mask, scales);
end       
b(6,8) = min(temp_hd);
for k = 1:length(jpegFiles9)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep9(i+((k-1)*20),j);
            temp_mask(i,j) = mask9(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_6, mask_probe_2_6, temp_template, temp_mask, scales);
end       
b(6,9) = min(temp_hd);
for k = 1:length(jpegFiles10)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep10(i+((k-1)*20),j);
            temp_mask(i,j) = mask10(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_6, mask_probe_2_6, temp_template, temp_mask, scales);
end       
b(6,10) = min(temp_hd);

% getting hamming distance for probe2 subject7 to all images enrolled ingallery

for k = 1:length(jpegFiles1)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep1(i+((k-1)*20),j);
            temp_mask(i,j) = mask1(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_7, mask_probe_2_7, temp_template, temp_mask, scales);
end       
b(7,1) = min(temp_hd);
for k = 1:length(jpegFiles2)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep2(i+((k-1)*20),j);
            temp_mask(i,j) = mask2(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_7, mask_probe_2_7, temp_template, temp_mask, scales);
end       
b(7,2) = min(temp_hd);
for k = 1:length(jpegFiles1)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep3(i+((k-1)*20),j);
            temp_mask(i,j) = mask3(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_7, mask_probe_2_7, temp_template, temp_mask, scales);
end       
b(7,3) = min(temp_hd);
for k = 1:length(jpegFiles4)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep4(i+((k-1)*20),j);
            temp_mask(i,j) = mask4(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_7, mask_probe_2_7, temp_template, temp_mask, scales);
end       
b(7,4) = min(temp_hd);
for k = 1:length(jpegFiles5)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep5(i+((k-1)*20),j);
            temp_mask(i,j) = mask5(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_7, mask_probe_2_7, temp_template, temp_mask, scales);
end       
b(7,5) = min(temp_hd);
for k = 1:length(jpegFiles6)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep6(i+((k-1)*20),j);
            temp_mask(i,j) = mask6(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_7, mask_probe_2_7, temp_template, temp_mask, scales);
end       
b(7,6) = min(temp_hd);
for k = 1:length(jpegFiles7)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep7(i+((k-1)*20),j);
            temp_mask(i,j) = mask7(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_7, mask_probe_2_7, temp_template, temp_mask, scales);
end       
b(7,7) = min(temp_hd);
for k = 1:length(jpegFiles8)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep8(i+((k-1)*20),j);
            temp_mask(i,j) = mask8(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_7, mask_probe_2_7, temp_template, temp_mask, scales);
end       
b(7,8) = min(temp_hd);
for k = 1:length(jpegFiles9)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep9(i+((k-1)*20),j);
            temp_mask(i,j) = mask9(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_7, mask_probe_2_7, temp_template, temp_mask, scales);
end       
b(7,9) = min(temp_hd);
for k = 1:length(jpegFiles10)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep10(i+((k-1)*20),j);
            temp_mask(i,j) = mask10(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_7, mask_probe_2_7, temp_template, temp_mask, scales);
end       
b(7,10) = min(temp_hd);

% getting hamming distance for probe2 subject8 to all images enrolled ingallery

for k = 1:length(jpegFiles1)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep1(i+((k-1)*20),j);
            temp_mask(i,j) = mask1(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_8, mask_probe_2_8, temp_template, temp_mask, scales);
end       
b(8,1) = min(temp_hd);
for k = 1:length(jpegFiles2)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep2(i+((k-1)*20),j);
            temp_mask(i,j) = mask2(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_8, mask_probe_2_8, temp_template, temp_mask, scales);
end       
b(8,2) = min(temp_hd);
for k = 1:length(jpegFiles1)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep3(i+((k-1)*20),j);
            temp_mask(i,j) = mask3(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_8, mask_probe_2_8, temp_template, temp_mask, scales);
end       
b(8,3) = min(temp_hd);
for k = 1:length(jpegFiles4)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep4(i+((k-1)*20),j);
            temp_mask(i,j) = mask4(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_8, mask_probe_2_8, temp_template, temp_mask, scales);
end       
b(8,4) = min(temp_hd);
for k = 1:length(jpegFiles5)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep5(i+((k-1)*20),j);
            temp_mask(i,j) = mask5(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_8, mask_probe_2_8, temp_template, temp_mask, scales);
end       
b(8,5) = min(temp_hd);
for k = 1:length(jpegFiles6)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep6(i+((k-1)*20),j);
            temp_mask(i,j) = mask6(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_8, mask_probe_2_8, temp_template, temp_mask, scales);
end       
b(8,6) = min(temp_hd);
for k = 1:length(jpegFiles7)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep7(i+((k-1)*20),j);
            temp_mask(i,j) = mask7(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_8, mask_probe_2_8, temp_template, temp_mask, scales);
end       
b(8,7) = min(temp_hd);
for k = 1:length(jpegFiles8)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep8(i+((k-1)*20),j);
            temp_mask(i,j) = mask8(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_8, mask_probe_2_8, temp_template, temp_mask, scales);
end       
b(8,8) = min(temp_hd);
for k = 1:length(jpegFiles9)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep9(i+((k-1)*20),j);
            temp_mask(i,j) = mask9(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_8, mask_probe_2_8, temp_template, temp_mask, scales);
end       
b(8,9) = min(temp_hd);
for k = 1:length(jpegFiles10)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep10(i+((k-1)*20),j);
            temp_mask(i,j) = mask10(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_8, mask_probe_2_8, temp_template, temp_mask, scales);
end       
b(8,10) = min(temp_hd);

% getting hamming distance for probe2 subject9 to all images enrolled ingallery

for k = 1:length(jpegFiles1)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep1(i+((k-1)*20),j);
            temp_mask(i,j) = mask1(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_9, mask_probe_2_9, temp_template, temp_mask, scales);
end       
b(9,1) = min(temp_hd);
for k = 1:length(jpegFiles2)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep2(i+((k-1)*20),j);
            temp_mask(i,j) = mask2(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_9, mask_probe_2_9, temp_template, temp_mask, scales);
end       
b(9,2) = min(temp_hd);
for k = 1:length(jpegFiles1)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep3(i+((k-1)*20),j);
            temp_mask(i,j) = mask3(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_9, mask_probe_2_9, temp_template, temp_mask, scales);
end       
b(9,3) = min(temp_hd);
for k = 1:length(jpegFiles4)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep4(i+((k-1)*20),j);
            temp_mask(i,j) = mask4(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_9, mask_probe_2_9, temp_template, temp_mask, scales);
end       
b(9,4) = min(temp_hd);
for k = 1:length(jpegFiles5)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep5(i+((k-1)*20),j);
            temp_mask(i,j) = mask5(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_9, mask_probe_2_9, temp_template, temp_mask, scales);
end       
b(9,5) = min(temp_hd);
for k = 1:length(jpegFiles6)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep6(i+((k-1)*20),j);
            temp_mask(i,j) = mask6(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_9, mask_probe_2_9, temp_template, temp_mask, scales);
end       
b(9,6) = min(temp_hd);
for k = 1:length(jpegFiles7)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep7(i+((k-1)*20),j);
            temp_mask(i,j) = mask7(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_9, mask_probe_2_9, temp_template, temp_mask, scales);
end       
b(9,7) = min(temp_hd);
for k = 1:length(jpegFiles8)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep8(i+((k-1)*20),j);
            temp_mask(i,j) = mask8(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_9, mask_probe_2_9, temp_template, temp_mask, scales);
end       
b(9,8) = min(temp_hd);
for k = 1:length(jpegFiles9)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep9(i+((k-1)*20),j);
            temp_mask(i,j) = mask9(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_9, mask_probe_2_9, temp_template, temp_mask, scales);
end       
b(9,9) = min(temp_hd);
for k = 1:length(jpegFiles10)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep10(i+((k-1)*20),j);
            temp_mask(i,j) = mask10(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_9, mask_probe_2_9, temp_template, temp_mask, scales);
end       
b(9,10) = min(temp_hd);

% getting hamming distance for probe2 subject10 to all images enrolled ingallery

for k = 1:length(jpegFiles1)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep1(i+((k-1)*20),j);
            temp_mask(i,j) = mask1(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_10, mask_probe_2_10, temp_template, temp_mask, scales);
end       
b(10,1) = min(temp_hd);
for k = 1:length(jpegFiles2)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep2(i+((k-1)*20),j);
            temp_mask(i,j) = mask2(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_10, mask_probe_2_10, temp_template, temp_mask, scales);
end       
b(10,2) = min(temp_hd);
for k = 1:length(jpegFiles1)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep3(i+((k-1)*20),j);
            temp_mask(i,j) = mask3(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_10, mask_probe_2_10, temp_template, temp_mask, scales);
end       
b(10,3) = min(temp_hd);
for k = 1:length(jpegFiles4)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep4(i+((k-1)*20),j);
            temp_mask(i,j) = mask4(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_10, mask_probe_2_10, temp_template, temp_mask, scales);
end       
b(10,4) = min(temp_hd);
for k = 1:length(jpegFiles5)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep5(i+((k-1)*20),j);
            temp_mask(i,j) = mask5(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_10, mask_probe_2_10, temp_template, temp_mask, scales);
end       
b(10,5) = min(temp_hd);
for k = 1:length(jpegFiles6)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep6(i+((k-1)*20),j);
            temp_mask(i,j) = mask6(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_10, mask_probe_2_10, temp_template, temp_mask, scales);
end       
b(10,6) = min(temp_hd);
for k = 1:length(jpegFiles7)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep7(i+((k-1)*20),j);
            temp_mask(i,j) = mask7(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_10, mask_probe_2_10, temp_template, temp_mask, scales);
end       
b(10,7) = min(temp_hd);
for k = 1:length(jpegFiles8)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep8(i+((k-1)*20),j);
            temp_mask(i,j) = mask8(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_10, mask_probe_2_10, temp_template, temp_mask, scales);
end       
b(10,8) = min(temp_hd);
for k = 1:length(jpegFiles9)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep9(i+((k-1)*20),j);
            temp_mask(i,j) = mask9(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_10, mask_probe_2_10, temp_template, temp_mask, scales);
end       
b(10,9) = min(temp_hd);
for k = 1:length(jpegFiles10)
     for i = 1:20;
        for j = 1:480;
            temp_template(i,j)= templatep10(i+((k-1)*20),j);
            temp_mask(i,j) = mask10(i+((k-1)*20),j);
        end
     end
     temp_hd(1,k) = gethammingdistance(template_probe_2_10, mask_probe_2_10, temp_template, temp_mask, scales);
end       
b(10,10) = min(temp_hd);

a
b
