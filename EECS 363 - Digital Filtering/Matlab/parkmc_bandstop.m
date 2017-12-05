clc;
close all;
clear all;

%fequenices for the band stop filter
f1_pass1 = 0;    %Pass band frequenices
f2_pass1 = 0.06;
f1_stop = 0.11;  %Stop band frequencies
f2_stop = 0.14;
f1_pass2 = 0.19; %Pass band frequencies
f2_pass2 = 0.5;

w1_pass1 = 0;
w2_pass1 = 0.12;
w1_stop = 0.22;
w2_stop = 0.28;
w1_pass2 = 0.38;
w2_pass2 = 1;

ripple_passband = 0.1; %db
att_stopband = 40; %db

delta1 = ripple_passband/8.696; %passband 1
delta2 = 10^(-att_stopband/20); %stopband
delta3 = ripple_passband/8.696; %passband 2
w2 = 1; %assuming the weight for the stop band is 1
w1 = (delta2*w2)/delta1;
w3 = (delta2*w2)/delta3;

freqs = [w1_pass1 w2_pass1 w1_stop w2_stop w1_pass2 w2_pass2];
mags = [1 1 0 0 1 1];
weights = [w1 w2 w3];

delta = [delta1 delta2 delta3];
disp('Delta: ')
disp(delta)
disp('Weights: ')
disp(weights)

N_approx = (-10*log10(delta1*delta2)-13)/(14.6*0.05); 
disp('N approximate: ')
disp(N_approx)

% From the approximation formula we get N = 36. 
% After trial and error, N = 38 was not selected as the required
% specifications were not met. 

%For N = 40, the passband ripple has a maximum amplitude inside the
%required specification.

N = 40;
disp('Order of Filter: ')
disp(N)

i = 1;

h = firpm(N,freqs,mags,weights);

intervals = [f1_pass1, f2_pass2; f1_pass1, f2_pass1; f1_stop, f2_stop; f1_pass2, f2_pass2];
figure(i)
for j = 1:size(intervals, 1)
    subplot(2,2,j)
    %Compute frequency response in db
    [fi,Hi] = freqzdB(h,1,301,intervals(j, 1),intervals(j, 2));
 %for proper ripple
%     if(j ~= 1 || j ~= 3)
%     for k=1:length(Hi)
%         if(Hi(k)<0)
%             Hi(k) = Hi(k) - 0.01538;
%         else 
%             Hi(k) = Hi(k) + 0.01538;
%         end
%         
%     end
%     end
    
    if(j == 3)
        Stopband_attenuation = max(Hi(1:226));
        disp(strcat('Frequency response from f = ', num2str(intervals(j, 1)), ' to f = ', num2str(intervals(j, 2))))
        disp('Attenuation in Stopband: ')
        disp(Stopband_attenuation)
    elseif(j == 2 || j == 4)
        Ripple = max(max(Hi),-min(Hi));
        disp(strcat('Frequency response from f = ', num2str(intervals(j, 1)), ' to f = ', num2str(intervals(j, 2))))
        disp('Ripple in Passband: ')
        disp(Ripple)
    end
    
    %Plot
    plot(fi,Hi)
    hold on;
    grid on;
    title(strcat('Frequency response from f = ', num2str(intervals(j, 1)), ' to f = ', num2str(intervals(j, 2))))
end

%Plot zeros of h
i = i+1;
figure(i)
zplane(h)
title('Pole-zero plot')
grid on;
hold on;

%converting h to q15 format
won = 2^15;
hvalsq15 = round(won*h);
disp('Length of Filter: ');
disp(N+1)
disp('Coefficients (h) in Q15 format: ')
fprintf('%d\n',hvalsq15)
