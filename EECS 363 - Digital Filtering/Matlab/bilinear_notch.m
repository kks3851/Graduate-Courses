%  F(s) = 
%  c(0)(s^2) + c(1)s + c(2)
% --------------------------
%  d(0)(s^2) + d(1)s + d(2)

clc;
clear all;
close all;
format long;

%case 1
W0 = 12*pi; %cut-off
W = 10*pi; %3db cut-off

%coeffecients of F(s) using the given parameters
c0 = 1; 
c1 = 0;
c2 = W0*W0;
d1 = (W0^(2) - W^(2))/(W);
d2 = c2;

fs = 48; %in kHz
fp = 6;  %in kHz
num = [c0 c1 c2];
den = [1 d1 d2];
[numd, dend] = bilinear(num,den,fs,fp); %analog to digital

[f,H]=freqzdB(numd,dend,501,0,0.5);
figure(1);
plot(f,H)
hold on;
grid on;
title('Frequency response from f = 0 to 0.5 for IIR Digital Notch Filter')
figure(2);
zplane(numd,dend)
title('Pole-zero plot IIR Digital Notch Filter')
grid on;
hold on;

%case 2

%  H(z) =
%
%      1 + Sqrt(2)z^(-1) + z^(-2)
% A * ----------------------------
%      1 + a(1)z^(-1) + a(2)z^(-2)


d = 0.0015;
b1 = 1;
b2 = -(sqrt(2));
b3 = 1;

a1 = -sqrt(2) + d;
a2 = 1 - d ;
A = 1;
numd1 = [b1 b2 b3].*A;
dend1 = [1 a1 a2];

[f1,H1]=freqzdB(numd1,dend1,501,0,0.5);
figure(3);
plot(f1,H1)
hold on;
grid on;
title('Frequency response from f = 0 to 0.5 for IIR Digital Notch Filter')
figure(4);
zplane(numd1,dend1)
title('Pole-zero plot IIR Digital Notch Filter')
grid on;
hold on;


