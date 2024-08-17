import numpy as np
import matplotlib.pyplot as plt
# Frequencies in Hz and converted to rad/sec
frequencies = np.array([0.5, 1.0, 2.4, 4.0, 6.0, 8.0]) # in Hz
omega = 2 * np.pi * frequencies
# Peak-to-peak outputs (counts)
peak_to_peak_counts = np.array([900, 980, 1290, 960, 570, 340])
# Reference peak-to-peak output at 0.5 Hz
reference_peak_to_peak = peak_to_peak_counts[0]
# Calculate M(dB)
M_dB = 20 * np.log10(peak_to_peak_counts / reference_peak_to_peak)
# Plot Asymptotic Bode Magnitude Plot
plt.figure(figsize=(10, 5))
plt.semilogx(omega, M_dB, 'o-', label='Measured Bode Magnitude')
# Asymptotic lines - manually adjust based on slope observations
asymptotic_freqs = [0.1, 1, 10, 100]
asymptotic_mags = [0, 0, -10, -40]
plt.semilogx(asymptotic_freqs, asymptotic_mags, '--', label='Asymptotic Fit')
plt.title('Asymptotic Bode Magnitude Plot')
plt.xlabel('Frequency (rad/sec)')
plt.ylabel('Magnitude (dB)')
plt.grid(True, which='both', linestyle='--', linewidth=0.5)
plt.legend()
plt.show()
# Calculate K using low-frequency magnitude
low_freq_dB = M_dB[0]
K = 10**(low_freq_dB / 20)
# Example Transfer Function H(s)
omega_c = 6 # Estimated cutoff frequency in rad/sec
tau = 1 / omega_c
print(f"Estimated Transfer Function: H(s) = {K} / (1 + s/{omega_c})")
print(f"Time Constant: τ = {tau} sec")
