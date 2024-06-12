% Read the integers from the text file
fid = fopen('data_out.txt', 'r');
integers = fscanf(fid, '%d');
fclose(fid);

% Create a time vector
fs = 5; % Sample rate
duration = length(integers) / fs; 
t = linspace(0, duration, length(integers));

% Plot the integers over time
plot(t, integers);
xlabel('Time (s)');
ylabel('Amplitude');
title('Integers over Time');
