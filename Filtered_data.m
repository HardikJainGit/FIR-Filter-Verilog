% Read the integers from the text file
fid = fopen('data_out.txt', 'r');
integers = fscanf(fid, '%d');
fclose(fid);

% Create a time vector
fs = 44100; % Sample rate
duration = 0.01; % Duration in seconds
t = 0:1/fs:duration;

% Create a smoother sine wave using the integers as amplitudes
sine_wave = zeros(size(t));
for i = 1:length(integers)
    sine_wave = sine_wave + integers(i) * sin(2*pi*440*t);
end

% Plot the sine wave
plot(t, sine_wave);
xlabel('Time (s)');
ylabel('Amplitude');
title('Sine Wave from Integers');
