% Author Name: Sarah Truitt
% Email: Truitt46@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Homework 1
% Date: 

% aksing for temperature
tempC = input ('Enter a temperature in Celcius:');
% calculating the fahrenheit
tempF = (tempC*9/5)+32;

str = 'The temperature in Fahrenheit is';
% display the final temperature in Fahrenheit
fprintf('%s: %f \n', str, tempF);

if tempF > 100
    fprintf("It's a hot day!");
end

