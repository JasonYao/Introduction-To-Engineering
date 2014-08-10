% By Jason Yao

% Exercise 1
load sf1045.txt; % Loads the data file
format long; % Allows for the whole dataset to be read (long digits)
%sf1045(1:9,:)

% Separation of the data set into discrete vectors
strain = sf1045(:,1); % strain (in/in)
force = sf1045(:,2); % force (lb*f)
d = 0.505; % diameter of material

% Calculation
stress = force/(pi*((d/2)^2));

load sfalum.txt; % Loads the data file
format long; % Allows for the whole dataset to be read (long digits)

% Separation of the data set into discrete vectors
strain2 = sfalum(:,1); % strain (in/in)
force2 = sfalum(:,2); % force (lb*f)
d2 = 0.505; % diameter of material

% Calculation
stress2 = force2/(pi*((d2/2)^2));

% Plot
plot(strain, stress, strain2, stress2)
xlabel('Strain (in/in)')
ylabel('stress (psi)')
title('stress-strain for 1045 hot roled carbon steel')