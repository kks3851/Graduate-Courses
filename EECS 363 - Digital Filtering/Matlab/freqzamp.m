function [f,A] = freqzamp(h,nfreqs,f1,f2)
%
%  A set of linear phase digital filters, each with transfer
%  function
%
%  h(1) + h(2)/z + h(3)/(z^2) + . . . . +- h(1)/(z^(N-1))
%
%  all have length N and are represented by the rows of the
%  parameter matrix h. They are imagined as in cascade connection
%  and A is returned as the positive or negative real whose
%  magnitude is the magnitude response of the overall filter.
%  If the overall filter is Type 1 or 2, H is the real part of
%  the so-called "amplitude", the imaginary part if Type 3 or 4.
%
f = linspace(f1,f2,nfreqs);
w = 2*pi*f;
[m,n]=size(h);
H=freqz(h(1,:),1,w);
for k=2:m
    H=H.*freqz(h(k,:),1,w);
end
na=(n-1)/2;
fac=exp(i*m*na*w);
H=fac.*H;
if norm(real(H),inf) >= norm(imag(H),inf)
    A=real(H);
else
    A=imag(H);
end
