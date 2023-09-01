%% Figure 1 [N = 100, P = 1]
N = 100;
P = "1";

figure;

subplot(2,2,1)
[result] = simulateBiasedWalk(N, P, 1/3, 1/3, 1/3);
bar([result])
ylabel('100 Particles')
xlabel('Bins')
title('Probabilities = (s = 1/3, w = 1/3, e = 1/3): ')

subplot(2,2,2)
[result] = simulateBiasedWalk(N, P, 2/3, 1/6, 1/6);
bar([result])
ylabel('100 Particles')
xlabel('Bins')
title('Probabilities = (S = 2/3, w = 1/6, e = 1/6):')

subplot(2,2,3)
[result] = simulateBiasedWalk(N, P, 3/5, 3/10, 1/10);
bar([result])
ylabel('100 Particles')
xlabel('Bins')
title('Probabilities = (s = 3/5, w = 3/10 e = 1/6):')

subplot(2,2,4)
[result] = simulateBiasedWalk(N, P, 3/5, 1/10, 3/10);
bar([result])
ylabel('100 Particles')
xlabel('Bins')
title('Probabilities = (s = 3/5, w = 1/10, e = 3/10):')

sgtitle(["2D Biased Random Walk", "Figure 1:", "N = 100, P = 1"])

%% Figure 1 [N = 200, P = 1]
N = 200;
P = "1";

figure;

subplot(2,2,1)
[result] = simulateBiasedWalk(N, P, 1/3, 1/3, 1/3);
bar(result)
ylabel('200 Particles')
xlabel('Bins')
title('Probabilities = (s = 1/3, w = 1/3, e = 1/3):')

subplot(2,2,2)
[result] = simulateBiasedWalk(N, P, 2/3, 1/6, 1/6);
bar(result)
ylabel('200 Particles')
xlabel('Bins')
title('Probabilities = (S = 2/3, w = 1/6, e = 1/6):')

subplot(2,2,3)
[result] = simulateBiasedWalk(N, P, 3/5, 3/10, 1/10);
bar(result)
ylabel('200 Particles')
xlabel('Bins')
title('Probabilities = (s = 3/5, w = 3/10 e = 1/6):')

subplot(2,2,4)
[result] = simulateBiasedWalk(N, P, 3/5, 1/10, 3/10);
bar(result)
ylabel('200 Particles')
xlabel('Bins')
title('Probabilities = (s = 3/5, w = 1/10, e = 3/10):')

sgtitle(["2D Biased Random Walk", "Figure 2:", "N = 200, P = 1"])

%% Figure 1 [N = 100, P = rand]
N = 100;
P = "rand";

figure;

subplot(2,2,1)
[result] = simulateBiasedWalk(N, P, 1/3, 1/3, 1/3);
bar(result)
ylabel('100 Particles')
xlabel('Bins')
title('Probabilities = (s = 1/3, w = 1/3, e = 1/3):')

subplot(2,2,2)
[result] = simulateBiasedWalk(N, P, 2/3, 1/6, 1/6);
bar(result)
ylabel('100 Particles')
xlabel('Bins')
title('Probabilities = (S = 2/3, w = 1/6, e = 1/6):')

subplot(2,2,3)
[result] = simulateBiasedWalk(N, P, 3/5, 3/10, 1/10);
bar(result)
ylabel('100 Particles')
xlabel('Bins')
title('Probabilities = (s = 3/5, w = 3/10 e = 1/6):')

subplot(2,2,4)
[result] = simulateBiasedWalk(N, P, 3/5, 1/10, 3/10);
bar(result)
ylabel('100 Particles')
xlabel('Bins')
title('Probabilities = (s = 3/5, w = 1/10, e = 3/10):')

sgtitle(["2D Biased Random Walk", "Figure 3:", "N = 100, P = rand"])

%% Figure 4 [N = 200, P = rand]
N = 200;
P = "rand";

figure;

subplot(2,2,1)
[result] = simulateBiasedWalk(N, P, 1/3, 1/3, 1/3);
bar(result)
ylabel('200 Particles')
xlabel('Bins')
title('Probabilities = (s = 1/3, w = , 1/3e = 1/3):')

subplot(2,2,2)
[result] = simulateBiasedWalk(N, P, 2/3, 1/6, 1/6);
bar(result)
ylabel('200 Particles')
xlabel('Bins')
title('Probabilities = (S = 2/3, w = 1/6, e = 1/6):')

subplot(2,2,3)
[result] = simulateBiasedWalk(N, P, 3/5, 3/10, 1/10);
bar(result)
ylabel('200 Particles')
xlabel('Bins')
title('Probabilities = (s = 3/5, w = 3/10 e = 1/6):')

subplot(2,2,4)
[result] = simulateBiasedWalk(N, P, 3/5, 1/10, 3/10);
bar(result)
ylabel('200 Particles')
xlabel('Bins')
title('Probabilities = (s = 3/5, w = 1/10, e = 3/10):')

sgtitle(["2D Biased Random Walk", "Figure 4:", "N = 200, P = rand"])