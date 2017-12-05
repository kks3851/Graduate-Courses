function [DH,DW] = remezprf(N, F, GF, W, A, diff_flag)
%REMEZPRF Frequency Response Function for FIRPM.
%
%  This program modifies the standard Matlab program REMEZFRF, and
%  is used in the same way. However an m-file AMPL(f) computing the
%  amplitude function of a prefilter is required so that the linear
%  phase filter designed by FIRPM, when cascaded with the prefilter,
%  results in the desired amplitude response.
%
%  AMPL must be written assuming the sampling frequency fs = 1,
%  although FIRPM assumes fs = 2. An example is the amplitude
%  response of an RC filter cutting off of f0=0.1 :

%  function H = ampl(f)
%  %
%  %  amplitude for an RC filter with 3 dB frequency
%  %  f0 = 0.1fs
%  %
%  f0=0.1;
%  f=f/f0;
%  H=1+f.*f;
%  H=sqrt(H);
%  H=1./H;
%
%  Note particularly that ampl(f) must be written assuming that f is
%  a vector.
%
%  FIRPM(N,F,{'remezprf',A}, ...) designs a linear-phase FIR filter
%  using FIRPM.
%
%  The symmetry option SYM defaults to 'even' if unspecified in the
%  call to FIRPM.
%
%  See also FIRPM.

%   Original version Copyright 1988-2001 The MathWorks, Inc.
%   $Revision: 1.5 $

%  [DH,DW]=REMEZPRF(N,F,GF,W,A,diff_flag)
%      N: filter order (length minus one)
%      F: vector of band edges
%     GF: vector of interpolated grid frequencies
%      W: vector of weights, one per band
%      A: vector of amplitudes of desired frequency response at band edges F
% diff_flag: ==1 for differentiator (1/f) weights, ==0 otherwise
%
%     DH: vector of desired filter response (mag & phase)
%     DW: vector of weights (positive)
%
% NOTE: DH(GF) and DW(GF) are specified as functions of frequency

% Support query by FIRPM for the default symmetry option:
if nargin==2,
  % Return symmetry default:
  if strcmp(N,'defaults'),
    DH = 'even';   % can be 'even' or 'odd'
    return
  end
end

if nargin < 6
    diff_flag = 0;
end

% Prevent discontinuities in desired function
for k=2:2:length(F)-2
    if F(k) == F(k+1)
        error('Adjacent bands not allowed.')
    end
end
if length(F) ~= length(A)
    error('Frequency and amplitude vectors must be the same length.')
end

nbands = length(A)/2;
l = 1;
while (l+1)/2 <= nbands
    sel = find( GF>=F(l) & GF<=F(l+1) );
    % desired magnitude is line connecting A(l) to A(l+1)
    if F(l+1)~=F(l)   % 
        slope=(A(l+1)-A(l))/(F(l+1)-F(l));
        DH(sel) = polyval([slope A(l)-slope*F(l)],GF(sel));
    else   % zero bandwidth band 
        DH(sel) = (A(l)+A(l+1))/2;  
    end
    prfltr=ampl(GF(sel)/2);
    DH(sel)=DH(sel)./prfltr;
    DW(sel) = W((l+1)/2) ./ (1 +(diff_flag & A(l+1) >= .0001)*(GF(sel)/2 - 1));
    DW(sel)=DW(sel).*prfltr;
    l = l + 2;
end

