% ---------------------------------------------------------------------------- %
% -- Description : % This function returns FFT for both signals              -- %
% -- Author      : juloeng                                                  -- %
% ---------------------------------------------------------------------------- %

function [fft1_shifted, fft2_shifted, N] = fft_calculation(signal_1, signal_2)

  N    = length(signal_1);
  fft1 = abs(fft(signal_1)) / N;
  fft2 = abs(fft(signal_2)) / N;
  fft1_shifted = fftshift(fft1);
  fft2_shifted = fftshift(fft2);

end
