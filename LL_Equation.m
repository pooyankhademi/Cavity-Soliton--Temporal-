clear all;
close all;

%% Input parameters
delta1 = 1;
delta2 = 2;
delta3 = 3;
%% Calculate
Y = linspace(0, 6, 1000);
%
Xref = Y;
X1 = Y.^3 - 2*delta1*Y.^2 + (delta1^2 +1)*Y;
X2 = Y.^3 - 2*delta2*Y.^2 + (delta2^2 +1)*Y;
X3 = Y.^3 - 2*delta3*Y.^2 + (delta3^2 +1)*Y;

%% Plot 
figure; hold on; box on;
plot(Xref, Y, '--k');
plot(X1, Y, '-b');
plot(X2, Y, '-r');
plot(X3, Y, '-g');
axis([0 6 0 4]);
xlabel('X');
ylabel('Y');
title('Stability analysis');
legend('Reference', '\Delta = 1', '\Delta = 2', '\Delta = 3');