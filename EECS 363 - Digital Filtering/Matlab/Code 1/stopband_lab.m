% A bandstop filter has specs stopband at [0.11, 0.14]; passbands at
% [0,0.06] and [0.19,0.5]. This requires length 81 filter for Hamming 
%window.
clc;
close all;
clear all;

m=0:80;
lambda=40;
hideal=0.16*cos(0.25*pi*(m-lambda)).*sinc(0.08*(m-lambda));
h=hideal.*hamming(81)';
figure(1);
zplane(h);
hold on;
grid on;
[f,H1]=freqzdB(h,1,501,0.19,0.5);
figure(2);
subplot(2,2,1);
plot(f,H1)
title('Magnitude Response for frequency range 0.19 to 0.5 using Hamming Window')
hold on;
grid on;
Hpass2=[H1(1:226) H1(227:350) H1(351:501)];
pass2_Hamming=max(Hpass2)
[f,H2]=freqzdB(h,1,501,0.11,0.14);
subplot(2,2,2);
plot(f,H2)
title('Magnitude Response for frequency range 0.11 to 0.14 using Hamming Window')
hold on;
grid on;
Hstop=[H2(1:226) H2(227:350) H2(351:501)];
stop_Hamming=max(Hstop)
[f,H3]=freqzdB(h,1,501,0.0,0.06);
subplot(2,2,3);
plot(f,H3)
title('Magnitude Response for frequency range 0.0 to 0.06 using Hamming Window')
hold on;
grid on;
Hpass1=[H3(1:226) H3(227:350) H3(351:501)];
pass1_Hamming=max(Hpass1)
[f,H4]=freqzdB(h,1,501,0.0,0.5);
subplot(2,2,4);
plot(f,H4)
title('Magnitude Response for frequency range 0.10 to 0.5 using Hamming Window')
hold on;
grid on;
Hstop1=[H4(1:226) H4(227:350) H4(351:501)];
stop81Hamming=max(Hstop1)
%