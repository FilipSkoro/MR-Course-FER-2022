%% K-ovi

Ki = alpha_r;
Kd = 3*alpha_r-beta_r;
Kp = 3*alpha_r;
Kt = 1/sqrt(Kd*Ki);

%% K-ovi za brzinu

Ki_vel_surge = alpha_u;
Kp_vel_surge = 2*alpha_u;
Ki_vel_sway = alpha_v;
Kp_vel_sway = 2*alpha_v;

%% K-ovi za poziciju

Kp_pos_surge = 0.05;
Kd_pos_surge = 0.1;
Kp_pos_sway = 0.05;
Kd_pos_sway = 0.1;

pocetni_surge = 1;
pocetni_sway = 1;

%% Limiti

% za prvi zadatak 2.2

limit_max = 2.2;
limit_min = -limit_max;

%% 1.zadatak

figure(1);
subplot(2,1,1);
plot(yaw_angles);
grid();
title('yaw response');
xlabel('t [s]');
ylabel('yaw [degrees]');
legend('yaw angle', 'ref. yaw angle');

subplot(2,1,2);
hold on;
plot(yaw_moment);
grid();
title('yaw moment');
xlabel('t [s]');
ylabel('N [Nm]');
legend('N');

%% 2.zadatak

figure(1);
hold on;
plot(speed_surge);
plot(pocetni_surge);
grid();
title('{\it u} velocity response');
xlabel('t [s]');
ylabel('{\it u} [m/s]');
legend('{\it u}', 'ref. {\it u} = 1 m/s');

figure(2);
hold on;
plot(speed_sway);
plot(pocetni_sway);
grid();
title('{\it v} velocity response');
xlabel('t [s]');
ylabel('{\it v} [m/s]');
legend('{\it v}', 'ref. {\it v} = 1 m/s');

figure(3);
hold on;
plot(thruster_1);
plot(thruster_2);
plot(thruster_3);
plot(thruster_4);
grid();
xlabel('t [s]');
ylabel('angular velocity [rad/s]');
title('Angular velocities of all 4 thrusters');
legend('thruster_1', 'thruster_2', 'thruster_3', 'thruster_4');

%% 3.zadatak

figure(1);
hold on;
plot(X);
plot(X_Ref);
grid();
title('X response');
xlabel('t [s]');
ylabel('x [m]');
legend('X', 'ref. X = 5 m');
 
figure(2);
hold on;
plot(Y);
plot(Y_Ref);
grid();
title('Y response');
xlabel('t [s]');
ylabel('y [m]');
legend('Y', 'ref. Y = 15 m');

figure(3);
hold on;
plot(thruster_1);
plot(thruster_2);
plot(thruster_3);
plot(thruster_4);
grid();
xlabel('t [s]');
ylabel('angular velocity [rad/s]');
title('Angular velocities of all 4 thrusters');
legend('thruster_1', 'thruster_2', 'thruster_3', 'thruster_4');

%% 4.zadatak

figure(1);
plot(yaw_angle);
hold on;
plot(yaw_angle_ref);
grid();
title('Yaw response');
xlabel('t [s]');
ylabel('yaw angle [degrees]');
legend('yaw angle', 'ref. yaw angle');

figure(2);
subplot(2, 1, 1);
plot(X);
hold on;
plot(X_Ref_4);
grid();
title('X response');
xlabel('t [s]');
ylabel('x [m]');
legend('X', 'ref. X');

subplot(2, 1, 2);
plot(Y);
hold on;
plot(Y_Ref_4);
grid();
title('Y response');
xlabel('t [s]');
ylabel('y [m]');
legend('Y', 'ref. Y');
