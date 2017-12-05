function [xq,A] = quant(x,b)
%
%  Fixed point quantization.
%
%  Given a matrix x, this returns
%
%  xq = A*x rounded
%
%  where A = (B - .5625)/xmax
%
%  where xmax is the maximum absolute value of the members of x
%  and B = 2^(b-1). b is an integer representing the number of
%  bits in terms of which we want to quantize x.
%
%  Thus the values in xq are integers in the range -(B-1) to (B-1),
%  with at least one attaining the extreme, so x is in effect
%  quantized in terms of b bits.
%
%  Under ordinary statistical assumptions, we have then
%
%  xq = A*x + e
%
%  where e is quantization noise of mean 0 and variance 1/12.
%
%  Note that if a member of x is a power of 2 or representable with
%  few bits, then the same is not implied for its representation in
%  xq or xq/A, because of the scaling determined by xmax. To achieve
%  that purpose quantkeep can be used.
%
if b < 2 | b ~= round(b)
  fprintf('\nnumber of bits in call to quantize must be integer >= 2\n')
  return
end
xmax = max(abs(x));
xmax = max(xmax);
if xmax == 0
  xq=x;
  A=1;
else
  B=2^(b-1);
  A=(B - .5625)/xmax;
  xq=round(A*x);
end
