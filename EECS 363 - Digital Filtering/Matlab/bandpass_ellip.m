% Determine an elliptic IIR band pass filter satisfying the specifications
% passband [f2=0.075, f3=0.125], where the ripple must be within R =
% +-0.02 dB, stopbands are [0,0.05] and [0.15, 0.5], and where the stopband
% attenuation must be at least A = 60 dB.
%
attenuation=1;
n=2;
while attenuation > -60
  n=n+1
  [z,p,k]=ellip(n,0.04,60.02,[.15 .25]);
  k=k*(1+.02/8.686);
  b=k*real(poly(z));
  a=real(poly(p));
  [f,H]=freqzdB(b,a,1001,0,0.5);
  attenuation=max(H(101),H(301))
end
figure
plot(f,H)
title(['frequency response n = ',int2str(n)])
pause
figure
plot(f(1:101),H(1:101))
title(['stop band 1 response, n = ',int2str(n)])
pause
figure
plot(f(151:251),H(151:251))
title(['pass band response n = ',int2str(n)])
pause
figure
plot(f(301:1001),H(301:1001))
title(['stop band 2 response, n = ',int2str(n)])
pause
save b.txt b -ascii
save a.txt a -ascii
figure
zplane(b,a)
z=roots(b);
p=roots(a);
zer=[real(z),imag(z)];
save zeroes.txt zer -ascii
pols=[real(p),imag(p)];
save poles.txt pols -ascii
coefs=[-2*real(z), abs(z).*abs(z)];
save nums.txt coefs -ascii
coefs=[-2*real(p), abs(p).*abs(p)];
save dens.txt coefs -ascii
