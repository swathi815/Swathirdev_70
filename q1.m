% Define time vector t with a fine step for smooth plots
t = 0:0.01:8;

% Define the original x(t) as a piecewise function
x = (t>=0 & t<2).*t + (t>=2 & t<=6).*2 + (t>6 & t<=8).*(8-t);

% Set axis limits
x_limits = [0 10]; % Adjust based on the range of t for transformations
y_limits = [-1 9]; % Adjust based on the amplitude of x(t)

% Plot the original x(t)
subplot(3,2,1);
plot(t, x);
title('x(t)');
xlabel('Time (t)');
ylabel('Amplitude');
axis([x_limits y_limits]); % Apply axis limits to view entire graph

% Transformation 1: Time Shift x(t - 3)
t_shifted = t - 3; % Shift time vector by +3 units to the left
x_shifted = (t_shifted>=0 & t_shifted<2).*t_shifted + (t_shifted>=2 & t_shifted<=6).*2 + (t_shifted>6 & t_shifted<=8).*(8 - t_shifted);
subplot(3,2,2);
plot(t, x_shifted);
title('x(t - 3)');
xlabel('Time (t)');
ylabel('Amplitude');
axis([x_limits y_limits]);

% Transformation 2: Time Scaling x(2t)
t_scaled = t / 2; % Scale down the time vector by 1/2 for compression
x_scaled = (t_scaled>=0 & t_scaled<2).*t_scaled + (t_scaled>=2 & t_scaled<=6).*2 + (t_scaled>6 & t_scaled<=8).*(8 - t_scaled);
subplot(3,2,3);
plot(t, x_scaled);
title('x(2t)');
xlabel('Time (t)');
ylabel('Amplitude');
axis([x_limits y_limits]);

% Transformation 3: Time Scaling x(t/2)
t_expanded = t * 2; % Scale up the time vector by 2 for expansion
x_expanded = (t_expanded>=0 & t_expanded<2).*t_expanded + (t_expanded>=2 & t_expanded<=6).*2 + (t_expanded>6 & t_expanded<=8).*(8 - t_expanded);
subplot(3,2,4);
plot(t, x_expanded);
title('x(t/2)');
xlabel('Time (t)');
ylabel('Amplitude');
axis([x_limits y_limits]);

% Transformation 4: Combined Scaling and Shifting x(2t + 3)
t_combined = (t - 3) / 2; % Scale down and shift time vector
x_combined = (t_combined>=0 & t_combined<2).*t_combined + (t_combined>=2 & t_combined<=6).*2 + (t_combined>6 & t_combined<=8).*(8 - t_combined);
subplot(3,2,5);
plot(t, x_combined);
title('x(2t + 3)');
xlabel('Time (t)');
ylabel('Amplitude');
axis([x_limits y_limits]);
