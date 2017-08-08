% My first MATLAB program.
% Generates an array of random numbers within the specified range.

clear
clc
row = input('Enter no. of rows: ');
col = input('Enter no. of columns: ');
min = input('Enter range's lower bound: ');
max = input('Enter range's upper bound: ');
a = (max-min).*rand(row, col) + min;
a
