function [f,H] = freqzdB(b,a,nfreqs,f1,f2)
%
%  A digital filter with transfer function
%
%  b(1) + b(2)/z + b(3)/(z^2) + . . . . + b(N)/(z^(N-1))
% ______________________________________________________
%  a(1) + a(2)/z + a(3)/(z^2) + . . . . + a(M)/(z^(M-1))
%
%  has its magnitude response H (in dB) computed at nfreqs
%  frequencies f from f1 to f2, where 0 <= f1 < f2 <= 1.0.
%  That is, the frequency spacing is (f2-f1)/(nfreqs-1), with
%  f(1) = f1 and f(nfreqs) = f2.
%
%  A magnitude below -100 dB is returned as -100 dB.
%
f = linspace(f1,f2,nfreqs);
w = 2*pi*f;
H = freqz(b,a,w);
H = abs(H);
thr=1.0e-5*ones(size(H));
H=max(H,thr);
H=20*log10(H);
