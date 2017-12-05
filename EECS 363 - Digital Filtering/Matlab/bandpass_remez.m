% Example of bandpass filter determination with the
% Parks-McClellan implementation of the Remez algorithm
% represented by Matlab Signal Processing Toolbox
% function firpm.
%
% A bandpass filter has specs passband 0.25 < f < 0.325,
% ripple +-0.1 dB, with width of transition bands 0.025,
% i.e. stopband [0,0.225] has attenuation at least 40 dB
% and stopband [0.35,0.5] has attenuation at least 60 dB.
%
% It was determined by trial and error that N=98 did not
% meet specs but N=99 did, allowing for 59.99 to be 60.
% The standard formula for the approximate length of a
% low pass filter with ripple +-0.1 dB, attenuation 60 dB,
% and transition bandwidth 0.025 gives N = 100.
%
% Note that the Filter Design Toolbox function firgr could
% have been used, with the 'minorder' option, to determine
% the minimum length filter directly. That program would do
% essentially what is done here.
%
freqs=[0 0.45 0.5 0.65 0.7 1];
mags=[0 0 1 1 0 0];
weights=[1.15 1.0 11.5];
N=98
h=firpm(N,freqs,mags,weights);
[f,H]=freqzdB(h,1,151,0.25,0.325);
figure
plot(f,H)
title(['pass band with N = ',int2str(N)])
pause
ripple=max(max(H),-min(H))
[f,H]=freqzdB(h,1,501,0.0,0.5);
figure
plot(f,H)
title(['frequency response with N = ',int2str(N)])
pause
Hstop1=max(H(1:226))
Hstop2=max(H(351:501))
%
N=99
h=firpm(N,freqs,mags,weights);
[f,H]=freqzdB(h,1,151,0.25,0.325);
figure
plot(f,H)
title(['pass band with N = ',int2str(N)])
pause
ripple=max(max(H),-min(H))
[f,H]=freqzdB(h,1,501,0.0,0.5);
figure
plot(f,H)
title(['frequency response with N = ',int2str(N)])
pause
Hstop1=max(H(1:226))
Hstop2=max(H(351:501))
