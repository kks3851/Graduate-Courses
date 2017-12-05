function Hdb=value2dB(H)
%
% converts values in matrix H to dB,
% setting any below -100 dB to -100 dB.
%
H=abs(H);
sset=find(H > 1.0e-5);
Hdb=-100*ones(size(H));
Hdb(sset)=20*log10(H(sset));
