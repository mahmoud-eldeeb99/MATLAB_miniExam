% Define the range of phi
phi = linspace(-pi, pi, 101);

% Define the functions
f11 = phi.^3;
f12 = cos(phi.^3);
f21 = cos(phi.^3).^2;
f221 = cos(phi.^3).^2;
f222 = phi.*(cos(phi.^3).^2);

%% Create the subplots

% upper left subplot
figure;
subplot(2,2,1);
plot(phi, f11, 'b-', 'LineWidth', 1);
axis square;
xlabel('\phi');
ylabel('\phi^3');
title('f_{11} = \phi^3');

% upper right subplot
subplot(2,2,2);
plot(phi.^3, f12, 'r-', 'LineWidth', 1);
axis([min(phi.^3) max(phi.^3) -1.2 1.2]);
xlabel('\phi^3');
ylabel('f12(\phi^3)');
title('f_{12} = cos(\phi^3)');


% Lower left subplot
subplot(2,2,3);
plot(cos(phi.^3), f21, 'g', 'LineWidth', 1.5);
hold on;
scatter(cos(phi.^3), f21, 18, 'filled');
hold off;
xlim([-1, 1]);
ylim([0, 1]);
axis square;
xlabel('cos(\phi^3)');
ylabel('cos^2(\phi^3)');
text(-0.95, 0.9, '-\pi \leq \phi \leq \pi');

% Lower right subplot
subplot(2,2,4);
plot(phi, f221, 'k--', 'LineWidth', 1);
hold on;
plot(phi, f222, 'm-', 'LineWidth', 2);
axis square;
xlim([min(phi) max(phi)]);
ylim([min(min(f221, f222)) max(max(f221, f222))]);
xlabel('\phi');
ylabel('f');
title('f_{221} = (cos(\phi^3))^2, f_{222} = \phi(cos(\phi^3))^2');
legend('f_{221}', 'f_{222}', 'FontSize', 6, 'Location', 'south');
