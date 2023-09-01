%% Function to perform sampling and plot the results
function [KLD1, KLD2, X, h, X1, h1] = performSampling(bin, N)
    % Load the data from a MAT file
    load("sampledata2023.mat");
    
    % Create a histogram of the original data (Data0)
    [h, X] = hist(Data0, bin);
    h = h / sum(h);
    
    % Calculate the cumulative distribution function (CDF) of Data0
    cdf = cumsum(h);
    
    % Initialize the random number generator with a seed for reproducibility
    rng(4);
    
    % Sample N data points from the distribution represented by Data0
    DataNew = zeros(1, N);
    for i = 1:N
        u = rand;
        index = find(cdf >= u, 1);
        DataNew(i) = X(index);
    end
    
    % Create a histogram of the sampled data (DataNew)
    figure;
    [h1, X1] = hist(DataNew, bin);
    h1 = h1 / sum(h1);
    
    % Calculate the Kullback-Leibler Divergence from Data0 to DataNew
    KLD1 = sum(h .* log(h ./ h1));
    
    % Calculate the Kullback-Leibler Divergence from DataNew to Data0
    KLD2 = sum(h1 .* log(h1 ./ h));
    
    % Display the calculated Kullback-Leibler Divergences
    disp(['KLD (Data0 to Sampled DataNew): ' num2str(KLD1)]);
    disp(['KLD (Sampled DataNew to Data0): ' num2str(KLD2)]);
    
    % Create subplots for the probability distributions
    subplot(1, 2, 1);
    bar(X, h);
    ylabel('Probability');
    xlabel('Bins');
    title('Original Data Probability Distribution');
    
    subplot(1, 2, 2);
    bar(X1, h1);
    ylabel('Probability');
    xlabel('Bins');
    title('Sampled Data Probability Distribution');
    
    % Set a title for the entire plot
    sgtitle(['(Bins = ' num2str(bin) ', Samples = ' num2str(N) ')']);
end
