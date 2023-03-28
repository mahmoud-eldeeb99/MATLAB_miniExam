% Create a list of 5000 random value pairs (xn, yn)
n = 5000;
xn = 2 * rand(1, n); % values for xn in range [0, 2]
yn = rand(1, n); % values for yn in range [0, 1]

% Define the given functions
f1 = @(x) -0.3*x.^3 + 0.8*x.^2 - 0.28*x + 0.1;
f2 = @(x) 0.3;
f3 = @(x,y) sqrt((x-0.3).^2 + (y-0.8).^2);

% Plot the points that meet the given conditions
figure;
hold on;
plot(xn(yn < f1(xn)), yn(yn < f1(xn)), 'gx');
plot(xn(f1(xn) < yn & yn < f2(xn)), yn(f1(xn) < yn & yn < f2(xn)), 'b^');
plot(xn(f3(xn, yn) < 0.15), yn(f3(xn, yn) < 0.15), 'yo');
hold off;

% Set the axis limits and make the axis equal
xlim([0 2]);
ylim([0 1]);
axis equal;

%% the logical indexing is used to plot the points that meet the given conditions.
% The yn < f1(xn) condition is used to plot the points with green x-markers,
% the f1(xn) < yn & yn < f2(xn) condition is used to plot the points with blue triangle-markers
% the f3(xn, yn) < 0.15 condition is used to plot the points with yellow o-markers.
% The xlim, ylim, and axis equal commands are used to set the 
% axis limits and make the axis equal.