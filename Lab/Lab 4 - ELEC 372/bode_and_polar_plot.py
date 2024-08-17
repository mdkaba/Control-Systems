import numpy as np
import matplotlib.pyplot as plt
# Data from the table
frequencies = np.array([0.5, 1.0, 2.4, 4.0, 6.0, 8.0]) # in Hz
peak_to_peak_counts = np.array([900, 980, 1290, 960, 570, 340])
t_phi = np.array([0.05, 0.005, 0.03, 0.05, 0.04, 0.04])
# Calculate omega (radians/sec)
omega = 2 * np.pi * frequencies
# Reference Peak-to-Peak Output for 0.5 Hz
reference_peak_to_peak = peak_to_peak_counts[0]
# Calculate M(dB)
M_dB = 20 * np.log10(peak_to_peak_counts / reference_peak_to_peak)
# Calculate phi (degrees)
phi_degrees = -360 * frequencies * t_phi
# Plot Bode Magnitude
plt.figure(figsize=(10, 6))
plt.subplot(2, 1, 1)
plt.semilogx(omega, M_dB, marker='o')
plt.title('Bode Plot')
plt.ylabel('Magnitude (dB)')
plt.grid(True, which='both', linestyle='--', linewidth=0.5)
# Plot Bode Phase
plt.subplot(2, 1, 2)
plt.semilogx(omega, phi_degrees, marker='o', color='r')
plt.xlabel('Frequency (rad/sec)')
plt.ylabel('Phase (degrees)')
plt.grid(True, which='both', linestyle='--', linewidth=0.5)
plt.tight_layout()
plt.show()
# Convert phase to radians
phi_radians = np.deg2rad(phi_degrees)
# Plot Polar Plot
plt.figure(figsize=(8, 8))
ax = plt.subplot(111, polar=True)
ax.plot(phi_radians, peak_to_peak_counts, marker='o')
ax.set_title('Polar Plot')
ax.set_theta_zero_location("N") # Set the 0 degree location to the top
ax.set_theta_direction(-1) # Set clockwise
ax.set_rlabel_position(270) # Set the radial labels
plt.show()
