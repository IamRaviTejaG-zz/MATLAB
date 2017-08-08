% Generates a matrix with only boundary elements zero.

clear;
clc;
min = input('Enter min range: ');
max = input('\nEnter max range: ');
row = input('\nEnter no. of rows: ');
col = input('\nEnter no. of columns: ');
a = zeros(row, col);
for i = 2:row-1
  for j = 2:col-1
    a(i, j) = (max-min).*rand() + min;
  end
end
a
