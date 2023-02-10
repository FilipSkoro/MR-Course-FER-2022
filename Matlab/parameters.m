thrust = 25;

m = 0.8 * thrust;
g = 9.81;
rho = 1025.0;

% PUT YOUR PARAMETERS HERE
%%%%%%%%%%%%%
Iz = 0.4439;
added_mass_xy = 1.2189;
linear_damping_z = 0.2139;
quad_damping_xy = 1.0299;

%%%%%%%%%%%%%


rg = [0, 0, 0]; %The location vector of the COG
rb = [0, 0, 0]; %The location vector of the buoyancy 

inertia_matrix = [5, 5, Iz] * thrust; % Matrix (3x3) or diagonal elements (1x3)
added_mass = [added_mass_xy, added_mass_xy, 0.74, 0, 0, 0] * thrust; % Matrix (6x6) or diagonal elements (1x6)
linear_damping = [0, 0, 20, 5, 5, linear_damping_z] * thrust; % Matrix (6x6) or diagonal elements (1x6)
quadratic_damping = [quad_damping_xy, quad_damping_xy,0,0,0,0.0] * thrust; % Matrix (6x6) or diagonal elements (1x6)


alpha_u = m + added_mass(1);
alpha_v = m + added_mass(2);
alpha_w = m + added_mass(3);

alpha_p = inertia_matrix(1) + added_mass(4);
alpha_q = inertia_matrix(2) + added_mass(5);
alpha_r = inertia_matrix(3) + added_mass(6);

beta_u = linear_damping(1);
beta_uu = quadratic_damping(1);
beta_v = linear_damping(2);
beta_vv = quadratic_damping(2);
beta_w = linear_damping(3);
beta_ww = quadratic_damping(3);

beta_p = linear_damping(4);
beta_pp = quadratic_damping(4);
beta_q = linear_damping(5);
beta_qq = quadratic_damping(5);
beta_r = linear_damping(6);
beta_rr = quadratic_damping(6);


t200_data;
