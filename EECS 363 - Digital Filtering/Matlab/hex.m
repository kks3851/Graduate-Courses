clc;
close all;
clear all;

d = 0.0015;
xn0 = 1/2;
xn1 = -(sqrt(2))/4;
xn2 = 1/2;
xd1 = -(-sqrt(2) + d)/2; 
xd2 = -0.9985;
p=7;
[xhex_n0,xq_n0] = convert2q(xn0,p)
[xhex_n1,xq_n1] = convert2q(xn1,p)
[xhex_n2,xq_n2] = convert2q(xn2,p)
[xhex_d1,xq_d1] = convert2q(xd1,p)
[xhex_d2,xq_d2] = convert2q(xd2,p)