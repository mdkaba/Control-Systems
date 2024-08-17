import matplotlib.pyplot as plt
import numpy as np
# Data
frequencies_hz = np.array([0.04, 0.06, 0.08, 0.10, 0.20])
omega_pp_counts_sec = np.array([160000, 140000, 112000, 90000, 30000])
# Encoder Gain
encoder_gain = 2546.5
# Convert to radian/sec
omega_pp_radians_sec = omega_pp_counts_sec / encoder_gain
# Convert frequencies to radian frequencies
omega_radians = 2 * np.pi * frequencies_hz
# Plotting
plt.figure(figsize=(10, 6))
plt.plot(omega_radians, omega_pp_radians_sec, marker='o', linestyle='-', 
color='b')
plt.xlabel('Radian Frequency (rad/sec)')
plt.ylabel('Peak-to-Peak Angular Velocity $\\Omega_{pp}$ (rad/sec)')
plt.title('Peak-to-Peak Angular Velocity vs. Radian Frequency')
plt.grid(True)
plt.show()
