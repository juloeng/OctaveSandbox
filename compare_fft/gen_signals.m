% ---------------------------------------------------------------------------- %
% -- Description : This function returns 1 clean signal and 1 noisy signal  -- %
% -- Author      : juloeng                                                  -- %
% ---------------------------------------------------------------------------- %

function [t, clean_signal, noisy_signal] = gen_signals()

Fs  = 48e3;     % Sampling frequency
t   = 0:1/Fs:1; % Time range
A   = 1;        % Signal amplitude
f   = 1000;     % Signal frequency
SNR = 15;       % Signal noise ratio (dB)

% Create noise
noise = randn(size(t));
% Clean signal
clean_signal = sin(2 * pi * f * t);
% Noisy signal
noisy_signal = clean_signal + noise * (10^(-SNR/20));


end
