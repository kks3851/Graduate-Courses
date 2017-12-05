%Notch filter: stop band [0.11 , 0.14], passbands [0 , 0.06] and [0.19 , 0.5]

i = 0; %Figure counter

%Specifications
fmin = 0; 
fpasslim1 = 0.06;
fstop1 = 0.11;
fstop2 = 0.14;
fpasslim2 = 0.19;
fmax = 0.5;

%Determine the corresponding ideal bands
fistop1 = (fpasslim1 + fstop1)/2; %ideal stop band start
fistop2 = (fpasslim2 + fstop2)/2; %ideal stop band end
fistop_0 = (fistop1 + fistop2)/2;%center of ideal stop band: should be the frequency we are trying to get rid of, ie 0.125 here
fistop_c = (fistop2 - fistop1)/2;%width of ideal stop band
w0 = 2*pi*fistop_0; %Center omega 0
wc = 2*pi*fistop_c; %Bandwidth omega c

%Calculate transition bandwidth
ftrans = min((fstop1 - fpasslim1), (fpasslim2 - fstop2)); %transition band width
N = floor(4/ftrans); %Calculate number of zeros, using 8*pi/N>=2*pi*ftrans
if mod(N,2) == 1 %If this number is odd add 1 to make N+1 odd
    N = N+1;
end
%We want an odd-length filter so that it does not have a zero at f = 0.5 (omega = pi), which we would like to have in our pass band 
m=0:N; %Length of this vector is N+1
lambda=N/2; %Delay lambda is N/2
%Calculate Fourier coefficients for ideal band pass filter
hideal=2*wc/pi*cos(w0*(m-lambda)).*sinc(wc/pi*(m-lambda)); 
%Multiply all coefficients by -1
hideal = -1*hideal;
%Add 1 to middle coefficient
hideal(N/2+1) = hideal(N/2+1) + 1;
%Calculate windowed coefficients
h=hideal.*hamming(length(m))';
%Display coefficients
disp('Filter coefficients: ')
disp(h)

%Plot subsets of f
intervals = [fmin, fmax; fmin, fpasslim1; fstop1, fstop2; fpasslim2, fmax];
i = i+1;
figure(i)
for j = 1:size(intervals, 1)
    subplot(2,2,j)
    %Compute frequency response in db
    [fi,Hi]=freqzdB(h,1,301,intervals(j, 1),intervals(j, 2));
    %Plot
    plot(fi,Hi)
    title(strcat('Frequency response from f = ', num2str(intervals(j, 1)), ' to f = ', num2str(intervals(j, 2))))
end

%Plot zeros of h
i = i+1;
figure(i)
zplane(h)
title('Pole-zero plot')