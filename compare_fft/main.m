% ---------------------------------------------------------------------------- %
% -- Description : Compare two signals using FFT (Fast Fourier Transform)   -- %
% -- Author      : juloeng                                                  -- %
% ---------------------------------------------------------------------------- %

clc; close all; clear all;

% This function returns one clean signal and one noisy signal
[t, Fs, clean_signal, noisy_signal] = gen_signals();

% This function returns FFT for both signals
[fft1, fft2, N] = fft_calculation(clean_signal, noisy_signal);

% Get the frequency axis for FFT plot
f_shifted = Fs * (-N/2:N/2-1) / N;

% -- Plot -- %
% Plot signals
figure;
subplot(3,1,1);
plot(t, clean_signal);
title('Clean signal');
xlabel('Time (s)');
ylabel('Amplitude');
ylim([-1.5 1.5])
subplot(3,1,2);
plot(t, noisy_signal);
title('Noisy signal');
xlabel('Time (s)');
ylabel('Amplitude');
ylim([-2 2]);
% Plot FFT
subplot(3,1,3);
plot(f_shifted, fft1, 'b');
hold on;
plot(f_shifted, fft2, 'r');
hold off;
title('Noisy and clean signals FFT');
xlabel('Frequency (Hz)');
ylabel('Amplitude');
legend('Clean signal', 'Noisy signal');
xlim([-5000 5000]);
ylim([0 0.75]);
grid on;
