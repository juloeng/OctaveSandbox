% ---------------------------------------------------------------------------- %
% -- Description : Compare two signals using FFT (Fast Fourier Transform)   -- %
% -- Author      : juloeng                                                  -- %
% ---------------------------------------------------------------------------- %

% This function returns one clean signal and one noisy signal
[t, clean_signal, noisy_signal] = gen_signals();

% -- Plot
figure;
subplot(2,1,1);
plot(t, clean_signal);
title('Clean signal');
xlabel('Time (s)');
ylabel('Amplitude');
ylim([-1.5 1.5])

subplot(2,1,2);
plot(t, noisy_signal);
title('Noisy signal');
xlabel('Time (s)');
ylabel('Amplitude');
ylim([-2 2]);

