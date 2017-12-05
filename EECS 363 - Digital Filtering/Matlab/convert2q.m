function [xhex,xq] = convert2q(x,p)
%
% converts x to Qp hex representation
% provided -1 <= x < 1
%
% p+1 must be be a positive multiple of 4
%
% returns result as both decimal and hexadecimal integers
%
if mod(p+1,4) ~= 0 || p <= 0
  fprintf('p+1 = %d here but must be a positive multiple of 4\n',p+1);
  return
end
b = 2^p;
xi = round(x*b);
if xi >= b || xi < -b
  fprintf('argument x out of range for Q%d\n',p);
  fprintf('representation with %d bits\n',p+1);
  return
end
xq=xi;
if xi < 0
  xi = xi+2*b;
end
xhex = dec2hex(xi);
L=(p+1)/4;
while length(xhex) < L
    xhex=['0' xhex];
end
xhex=['0x' xhex];
return
