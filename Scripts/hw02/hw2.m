% Homework:2 
% Author: Christian Kolset
clear

%% Part 1

% Function parameters
q0 = 10;
R = 60;
L = 9;
C = 0.00005;

% Use linspace to create an array of 100 points between 0 and 0.8
t = linspace(0,0.8);

% Calculate the values of q
q = q0.*2.718.^(-R.*t/(2*L)).*cos(sqrt((1/(L*C))-(R/(2*L))^2).*t);

% Plot q vs t
hold on
subplot(2,1,1)
plot (t,q,'b--*')
title('Capacity vs Time Graph')
xlabel('Time')
ylabel('Charge')
%legend('Charge','Time')
hold off

% Make the capacitor 10x bigger
q2 = q0.*2.718.^(-R.*t/(2.*L)).*cos(sqrt((1/(L.*10.*C))-(R/(2.*L))^2).*t);

% Plot q2 vs t
hold on
subplot(2,1,2)
plot(t,q2,'rs:')
title('10x Capacity vs Time Graph')
xlabel('Time')
ylabel('Charge')
%legend('Charge','Time')
hold off

%% Part 2
%{
% Given experimental data
t_exp = 10:10:60;
c_exp = [3.4 2.6 1.6 1.3 1.0 0.5];

% Expected function
t_func = 0:0.5:70;
c_func = 4.84*2.718.^(-0.034*t_func);

% Plot
hold on
plot(t_exp,c_exp,'rd:')
plot(t_func,c_func,'g--')
xlabel('Time [minutes]')
ylabel('Concentration [ppm]')
legend('Experimental','Predicted')
hold off
%}