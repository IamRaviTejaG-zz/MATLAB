clc
clear all
close all

x = -2:2;
y = -2:2;
a = 0.1;
b = 0;
z = val(a, b);
subplot(2, 3, 1);
title('Sigma = 0.1, c = 0')
plot3(x, y, z);
a = 0.5;
b = 0;
z = val(a, b);
subplot(2, 3, 2);
title('Sigma = 0.5, c = 0')
plot3(x, y, z);
a = 1;
b = 0;
z = val(a, b);
subplot(2, 3, 3);
title('Sigma = 1, c = 0')
plot3(x, y, z);
a = 1.5;
b = 0;
z = val(a, b);
subplot(2, 3, 4);
plot3(x, y, z);
title('Sigma = 1.5, c = 0')
a = 1;
b = 5;
z = val(a, b);
subplot(2, 3, 5);
plot3(x, y, z);
title('Sigma = 1, c = 5')
a = 1;
b = -5;
z = val(a, b);
subplot(2, 3, 6);
plot3(x, y, z);
title('Sigma = 1, c = -5')

function z = val(a, b)
[x, y] = meshgrid(-2:2);
z = exp(((-x.^2-y.^2) / (2*a^2)) + b);
end