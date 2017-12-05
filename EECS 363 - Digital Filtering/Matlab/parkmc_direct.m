clc;
clear all;
close all;
 
% f1_pass1 = 0; 
% f2_pass1 = 0.06;
% f1_stop = 0.11;
% f2_stop = 0.14;
% f1_pass2 = 0.19;
% f2_pass2 = 0.5;
% 
% w1_pass1 = 0;
% w2_pass1 = 0.12;
% w1_stop = 0.22;
% w2_stop = 0.28;
% w1_pass2 = 0.38;
% w2_pass2 = 1;
% 
% ripple_passband = 0.1; %db
% ripple_stopband = 40; %db
% delta1 = (10^(ripple_passband/20)-1)/(10^(ripple_passband/20)+1) %passband 1
% delta2 = 10^(-ripple_stopband/20); %stopband
% delta3 = (10^(ripple_passband/20)-1)/(10^(ripple_passband/20)+1) %passband 2
% 
% freq=[w2_pass1 w1_stop w2_stop w1_pass2];
% mag=[1 0 1];
% dev = [delta1 delta2 delta3];
% [n,fo,ao,w] = remezord(freq,mag,dev)
% e=[delta1 delta2 delta1]
% h=remez(n-2,fo,ao,w);
% intervals = [f1_pass1, f2_pass2; f1_pass1, f2_pass1; f1_stop, f2_stop; f1_pass2, f2_pass2];
% i = i+1;
% figure(i)
% for j = 1:size(intervals, 1)
%     subplot(2,2,j)
%     %Compute frequency response in db
%     [fi,Hi]=freqzdB(h,1,301,intervals(j, 1),intervals(j, 2));
%     %Plot
%     plot(fi,Hi)
%     title(strcat('Frequency response from f = ', num2str(intervals(j, 1)), ' to f = ', num2str(intervals(j, 2))))
% end
% 
% % fp1 = 0.06;
% % fs1 = 0.11;
% % fs2 = 0.14;
% % fp2 = 0.19;
% % 
% % [h, del] = firpm(40, [0 fp1 fs1 fs2 fp2 .5]*2, [1 1 0 0 1 1]);
% % 
% % L = 512;
% % [A, om] = firamp(h, 1, L);
% % f = om/(2*pi);
% % 
% % figure(1)
% % clf
% % plot(f, A)
% % xlim([0 0.5])
% % title('Amplitude response')
% % xlabel('Frequency (normalized)')

% *********************************************
% Weighting factors for Remez equiripple FIR design
% M. Nentwig
% *********************************************
close all; clear all;

f = [0:9]/10; % normalized frequency 0..1

% a = nominal |H(f)| on a linear scale (sample amplitude)
% 1 1     : passband from frequency 0 to 0.1 
% 0 0     : stopband from frequency 0.2 to 0.3 
% 0.5 0.5 : passband with -6 dB (0.5 amplitude) from frequency 0.4 to 0.5 
% 0 0     : stopband from frequency 0.6 to 0.7
% 1 1     : passband from frequency 0.8 to 0.9
% other frequency ranges are "don't care" areas.
a = [1 1 0 0 0.5 0.5 0 0 1 1];

% *********************************************
% design specification for each band
% *********************************************
ripple1_dB = 0.3;
att2_dB = 60;
ripple3_dB = 0.2;
att4_dB = 70;
ripple5_dB = 0.1;

% *********************************************
% error for each band, on a linear scale
% *********************************************
% note: passband 3 has a nominal gain of 0.5 in 'a'.
% the allowed error of |H(f)| scales accordingly.
err1 = 1 - 10 ^ (-ripple1_dB / 20);
err2 = 10 ^ (-att2_dB / 20);
err3 = (1 - 10 ^ (-ripple3_dB / 20)) * 0.5; 
err4 = 10 ^ (-att4_dB / 20);
err5 = 1 - 10 ^ (-ripple5_dB / 20);

% the weight of each band is chosen as the inverse of the targeted error
% (stricter design target => higher weight).
% we could normalize each entry in w to (err1+err2+err3+err4+err5)
% but it would appear as common factor in all entries and therefore make no difference.
w = [1/err1 1/err2 1/err3 1/err4 1/err5];

% filter order
% this design problem is 'tweaked' so that the resulting filter is (quite) exactly on target
% for the given n, which can be changed only in steps of 1.
% Note that increasing order by 1 can make the filter worse due to even / odd 
% number of points (impulse response symmetry)
n = 52;

% *********************************************
% Run Remez / Parks McClellan filter design
% *********************************************
h = remez(n, f, a, w);
% force row vector (OctaveForge and Matlab's "remez" differ)
h = reshape(h, 1, prod(size(h))); 
% *********************************************
% Plot the results
% *********************************************
figure(1); hold on;

% zero-pad the impulse response to set frequency resolution
% of the FFT
h = [h, zeros(1, 1000)];

% frequency base
npts = size(h, 2);
fbase = (0:npts-1)/npts; 

plot(fbase, 20*log10(abs((fft(h)+1e-15))), 'b');
xlim([0, 0.5]);

% *********************************************
% sketch the requirements
% *********************************************
e = [1 1];
plot([f(1), f(2)]/2, e * ripple1_dB, 'k');
plot([f(1), f(2)]/2, e * -ripple1_dB, 'k');
plot([f(3), f(4)]/2, e * -att2_dB, 'k');
plot([f(5), f(6)]/2, e * ripple3_dB - 6.02, 'k');
plot([f(5), f(6)]/2, e * -ripple3_dB - 6.02, 'k');
plot([f(7), f(8)]/2, e * -att4_dB, 'k');
plot([f(9), f(10)]/2, e * ripple5_dB, 'k');
plot([f(9), f(10)]/2, e * -ripple5_dB, 'k');
xlabel('normalized frequency 0..1');
ylabel('dB');