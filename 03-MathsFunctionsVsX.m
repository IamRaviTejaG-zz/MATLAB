clc
clear all
close all

a = 1:0.1:2;
b1 = val1(a);
b2 = val2(a);
b3 = val3(a);
b4 = val4(a);
b5 = val5(a);
b6 = val6(a);
b7 = val7(a);
subplot(2, 4, 1);
plot(a, b1, 'blue');
title('x^3-3x^2+5 vs x');
xlabel('X-Axis');
ylabel('Y-Axis');
subplot(2, 4, 2);
plot(a, b2, 'blue');
title('sin(x^2) vs x');
xlabel('X-Axis');
ylabel('Y-Axis');
subplot(2, 4, 3);
plot(a, b3, 'blue');
title('sin^2x vs x');
xlabel('X-Axis');
ylabel('Y-Axis');
subplot(2, 4, 4);
plot(a, b4, 'blue');
title('sin2x + xcos4x vs x');
xlabel('X-Axis');
ylabel('Y-Axis');
subplot(2, 4, 5);
plot(a, b5, 'blue');
title('x/x^2+1 vs x');
xlabel('X-Axis');
ylabel('Y-Axis');
subplot(2, 4, 6);
plot(a, b6, 'blue');
title('cosx/1+sinx vs x');
xlabel('X-Axis');
ylabel('Y-Axis');
subplot(2, 4, [7, 8])
plot(a, b7, 'blue');
title('1/x + x^3/x^4+5xsinx vs x');
xlabel('X-Axis');
ylabel('Y-Axis');

%Functions below compute and return the values.
function y = val1(x)
y = x.^3 + 3*x.^2 + 5;
end

function y = val2(x)
y = sin(x.^2);
end

function y = val3(x)
y = sin(x).^2;
end

function y = val4(x)
y = sin(2.*x) + x.*cos(4.*x);
end

function y = val5(x)
y = x./(x.^2+1);
end

function y = val6(x)
y = cos(x) / 1+sin(x);
end

function y = val7(x)
y = (1./x) +  (x.^3) / (x.^4 + 5*x.*sin(x));
end