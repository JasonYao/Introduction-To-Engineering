%By Jason Yao
%Part 1
x = input('Enter a number: '); % Grabs first integer from user
y = input('Enter a number:'); % Grabs second integer from user
z = x+y; % adds both values from the user
disp('The value of both numbers combined is: '); disp(z) %displays the sum

%Part 2
a = 4; % initializes the variable a to 4
x = input('Guess a number between 1 and 10: ');% Grabs first integer from user
if x == a %if statement, that checks is user input equals 4
    disp('You done it.')
elseif x == 2 || x == 6 % checks if user input equals 6 or 2
    disp('You are pretty close')
else % says that somebody sucks otherwise
    disp('Haha you suck.')
end

% Part 3
a = 4;
x = input('Guess a number between 1 and 10: ');
if x == a % checks if the user input is equal
disp('Just right')
elseif x-a <= -1 % Checks if the number entered is too low
disp('Too low')
else % kicks out a too high message, since too low and just right are done
disp('Too high.')
end
