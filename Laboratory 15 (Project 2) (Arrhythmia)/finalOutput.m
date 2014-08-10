% By Team TOO SCHOOL FOR COOL
% By Jason "J MOney" Yao, Antonia "xXTondizzleXx" Molina & Nick "N Dawg" Huey

% Final Output

% Calculates the threshold
[vtOnsetList, svtOnsetList, unknownOnsetList, threshold, unknownOutput] = calculateThreshold();

% Displaying the information:
disp('The onset times for vts are: ');disp(vtOnsetList)
disp('The onset times for svts are: ');disp(svtOnsetList)
disp('The onset times for the unknowns are');disp(unknownOnsetList)
disp('The threshold between vts and svts is: ');disp(threshold)

% Displays the conclusions for the unknown signals
for i = 1:length(unknownOutput)
    if unknownOutput(i) == 1
        stringOutput = ['Unknown signal #' num2str(i) ' is undergoing VT, TREATMENT NEEDED!'];
        disp(stringOutput);
    else
        stringOutput2 = ['Unknown signal #' num2str(i) ' is undergoing SVT (No treatment needed)'];
        disp(stringOutput2);
    end
end