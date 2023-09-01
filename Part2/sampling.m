%% Figure 1: bins = 20, samples 1000
% Define parameters for the first plot
bins1 = 20;
samples1 = 1000;

% Generate and display the first plot
[KLD1_1, KLD2_1, X_1, b_1, X1_1, b1_1] = performSampling(bins1, samples1);

%% Figure 2: bins = 10, samples 1000
% Define parameters for the second plot
bins2 = 10;
samples2 = 1000;

% Generate and display the second plot
[KLD1_2, KLD2_2, X_2, b_2, X1_2, b1_2] = performSampling(bins2, samples2);

%% Figure 3: bins = 40, samples 1000
% Define parameters for the third plot
bins3 = 40;
samples3 = 1000;

% Generate and display the third plot
[KLD1_3, KLD2_3, X_3, b_3, X1_3, b1_3] = performSampling(bins3, samples3);
