clc
clear all
close all

[x, y] = val();
z = 20 + x.^2 + y.^2 - 10*cos(2*pi*x) + cos(2*pi*y);
surfc(x, y, z);
[val1, ind1] = min(z);
val1 = min(val1);
ind1 = min(ind1);
a = strcat('Min Value = ', num2str(val1));
b = strcat('Min Value at ', num2str(ind1));
legend([a, newline, b]);

function [x, y] = val()
[x, y] = meshgrid(-5:1:5);
end