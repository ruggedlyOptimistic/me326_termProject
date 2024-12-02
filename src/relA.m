%% Relative Acceleration: Non-Rotating Axes

function a_B = relA(a_A, omega_AB, alpha_AB, r_BA)

a_B = a_A + cross(alpha_AB, r_BA) + cross(omega_AB, cross(omega_AB, r_BA));

end