function [vtOnsetList, svtOnsetList, unknownOnsetList, threshold, unknownOutput] = calculateThreshold()
%calculateThreshold Calculates the threshold of the datasets

% Loads the data into the script file
load ECG_data.mat;

% For vts
vtOnsetList = [calculateOnset(vt1) calculateOnset(vt2) calculateOnset(vt3) calculateOnset(vt4) calculateOnset(vt5)];

% For svts
svtOnsetList = [calculateOnset(svt1) calculateOnset(svt2) calculateOnset(svt3) calculateOnset(svt4) calculateOnset(svt5)];

% For unknowns
unknownOnsetList = [calculateOnset(unknown1) calculateOnset(unknown2) calculateOnset(unknown3) calculateOnset(unknown4) calculateOnset(unknown5) calculateOnset(unknown6) calculateOnset(unknown7) calculateOnset(unknown8) calculateOnset(unknown9)];

% Calculates the threshold
threshold = (max(vtOnsetList) + min(svtOnsetList))/2;

% Checks if the unknown signals pass the threshold or not
unknownSize = length(unknownOnsetList);
for i = 1:unknownSize
    if unknownOnsetList(i) < threshold
        unknownOutput(i) = 1;
    else
        unknownOutput(i) = 0;
    end
end

end

