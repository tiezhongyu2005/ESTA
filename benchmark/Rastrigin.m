function y = Rastrigin(x)
% Rastrigin function
% Matlab Code by A. Hedar (Sep. 29, 2005).
% Last updated by Ahmed Tawfik (Apr. 30, 2013).
% n = length(x); 
% s = 0;
% for j = 1:n
%     s = s+(x(j)^2-10*cos(2*pi*x(j))); 
% end
% y = 10*n+s;


n = length(x);
s = sum(x.^2 - 10*cos(2*pi*x));
y = 10*n + s;