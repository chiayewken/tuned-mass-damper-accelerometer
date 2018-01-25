clc;
clear all;
acc = dlmread("accdamped.txt");
acc = acc(:, 2);
time = zeros(length(acc), 1);

for n = 1:length(time)
	time(n) = (n - 1) / 50;
endfor

plot(time, acc);
title ("acceleration of top plate against time");
ylabel ("acceleration (m / s ^ 2)");
xlabel = ("time (s)");

#{
undamped data
peaki = 8.8122;
timei = 3.9214;
peakf = 0.35374;
timef = 12.356;
n = 11;
#}

# damped data
peaki = 3.6025;
timei = 1.8844;
peakf = 0.11213;
timef = 6.8441;
n = 8;

logdecrement = 1 / n * log(peaki / peakf)
dratio = 1 / sqrt(1 + (2 * pi / logdecrement) ** 2)
period = (timef - timei) / n 
frequency = 1 / period
length = period / ((2 * pi) ** 2) * 9.81
