% % A bandpass filter has specs passband 0.25 < f < 0.325,
% % with width of transition bands 0.025, i.e. stopbands
% % [0,0.225] and [0.35,0.5]. This requires a length 80 filter
% % if a rectangular window is applied to the ideal, and a
% % length 161 filter if a Hamming window is used.
% %
% % Here we compare results of using length 80 rectangular,
% % length 161 rectangular, and length 161 Hamming.
% %
m=0:79;
lambda=39.5;
h=0.2*cos(0.575*pi*(m-lambda)).*sinc(0.1*(m-lambda));
[f,H]=freqzdB(h,1,151,0.25,0.325);
figure
plot(f,H)
title('pass band with rectangular window, length 80')
pause
[f,H]=freqzdB(h,1,501,0.0,0.5);
figure
plot(f,H)
title('frequency response with rectangular window, length 80')
pause
Hstop=[H(1:226) H(351:501)];
stop80rect=max(Hstop)
%
m=0:160;
lambda=80;
h=0.2*cos(0.575*pi*(m-lambda)).*sinc(0.1*(m-lambda));
[f,H]=freqzdB(h,1,151,0.25,0.325);
figure
plot(f,H)
title('pass band with rectangular window, length 161')
pause
[f,H]=freqzdB(h,1,501,0.0,0.5);
figure
plot(f,H)
title('frequency response with rectangular window, length 161')
pause
Hstop=[H(1:226) H(351:501)];
stop161rect=max(Hstop)
%
m=0:160;
lambda=80;
h=0.2*cos(0.575*pi*(m-lambda)).*sinc(0.1*(m-lambda));
h=h.*hamming(161)';
[f,H]=freqzdB(h,1,151,0.25,0.325);
figure
plot(f,H)
title('pass band with Hamming window, length 161')
pause
[f,H]=freqzdB(h,1,501,0.0,0.5);
figure
plot(f,H)
title('frequency response with Hamming window, length 161')
pause
Hstop=[H(1:226) H(351:501)];
stop161Hamming=max(Hstop)
%
% For comparison, the last filter will be determined
% using the Signal Processing Toolbox function fir1,
% for which the Hamming window is the default.
%
fprintf('compare to use of fir1, which sets the magnitude\n')
fprintf('response = 1 in the center of the passband\n')
W=[0.475,0.675];
h=fir1(160,W);
filterlength=length(h)
[f,H]=freqzdB(h,1,151,0.25,0.325);
figure
plot(f,H)
title('pass band with Hamming window, fir1, length 161')
pause
[f,H]=freqzdB(h,1,501,0.0,0.5);
figure
plot(f,H)
title('frequency response with Hamming window, fir1, length 161')
pause
Hstop=[H(1:226) H(351:501)];
stop161fir1Hamming=max(Hstop)