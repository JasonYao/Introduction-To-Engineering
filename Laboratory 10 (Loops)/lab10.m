% By Jason Yao

% Exercise 1
sumNumbers = 2:2:100; % Creates a vector with the even #s from 2-100
sumTotal = 0; % Initializes the sum to 0
for n=1:length(sumNumbers), sumTotal = sumTotal + sumNumbers(n); %creates a summation for loop
end
disp(sumTotal)

% Exercise 2
sumNewTotal = 0; % Initializes the sum to 0
userNewInput = 0;
for n=1:4, sumNewTotal = sumNewTotal + userNewInput;
    userNewInput = input('Please enter a number:');
end
sumNewTotal = sumNewTotal + userNewInput;
disp('the total sum for your values entered was: '); disp(sumNewTotal)

% Exercise 3
A = zeros(5,5);
for i = 1:5
    for j = 1:5
        if i>j
            A(i,j) = 1;
        end
    end % ends for j
end % ends for i
disp(A)

% Exercise 4
x = randi(10); % generate random integer between 1 and 10
g = 0; % initialize guess from user to zero
disp('I picked a random number between 1 and 10')
while g ~= x
    if g > x;
       disp('Lol you guessed too high sucker- try again') 
    elseif (g >= 1) & (g < x);
        disp('Lol you guessed too low sucker- try again')
    end
g = input('Guess what it is: ');
end
disp('Well that totally did not take forever.')

% Exercise 5
disp('The totally not evil game.')
y = 1:10; % makes a vector of 10 values
y2 = sum(y); % sums those 10 values up
x = randi(10); % generate random integer between 1 and 10
z = 0; % variable to sum up the values the user enters
g = 0; % initialize guess from user to zero
disp('I picked a random number between 1 and 10')
while z ~= y2;
g = input('lol you suck, try again: ');
z = z + g;
end
disp('Well that totally did not take forever.')