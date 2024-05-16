enrollment = [15, 20, 30, 45, 65, 90, 120, 155];
years = 1:8;
figure;
plot(years, enrollment, 'ms', 'MarkerSize', 10, 'LineWidth', 4);
xlim([0.5, 8.5]);
ylim([0, 170]);

xlabel('Year');
ylabel('Number of Students');

title('Growth of Class Size in English Course Over 8 Years');

grid on;

disp("-------------------------------------------------------");

load('mitMap.mat');
figure;

subplot(2,2,1);
imagesc(mit);
colormap(cMap);
axis square;
ylim([100, 800]);
yticks(100:100:800);
title('Square');

subplot(2,2,2);
imagesc(mit);
colormap(cMap);
axis tight;
ylim([100, 800]);
yticks(100:100:800);
title('Tight');

subplot(2,2,3);
imagesc(mit);
colormap(cMap);
axis equal;
ylim([-100, 1000]);
yticks(0:200:1000);
title('Equal');

subplot(2,2,4);
imagesc(mit);
colormap(cMap);
axis xy;
ylim([100, 800]);
yticks(100:100:800);
title('XY');

disp("-------------------------------------------------------");

Z0 = rand(5);

[X0, Y0] = meshgrid(1:5);

[X1, Y1] = meshgrid(1:0.1:5);

Z1 = interp2(X0, Y0, Z0, X1, Y1, 'cubic');

surf(X1, Y1, Z1);
colormap(hsv);
shading interp;

hold on;
contour(X1, Y1, Z1, 15, 'k'); % 15-line contour
hold off;

colorbar;

caxis([0, 1]);

zlim([-0.2, 1.2]);

xlabel('X');
ylabel('Y');
zlabel('Z');
title('Random Surface with Interpolated Contour');

disp("-------------------------------------------------------");


A = [3, 6, 4; 
     1, 5, 0; 
     0, 7, 7];

b = [1; 2; 3];

x = A \ b;

error_vector = A*x - b;

disp('Solution:');
disp(['a = ', num2str(x(1))]);
disp(['b = ', num2str(x(2))]);
disp(['c = ', num2str(x(3))]);

disp('Error vector:');
disp(error_vector);

disp("-------------------------------------------------------");


