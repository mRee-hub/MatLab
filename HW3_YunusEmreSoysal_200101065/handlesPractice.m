x = linspace(0, 2*pi, 100);
y = sin(x);

figure;
plot(x, y, 'r');

xlim([0, 2*pi]);

set(gca, 'xtick', [0 pi 2*pi], 'xticklabel', {'0', '1', '2'});

set(gca, 'ytick', -1:0.5:1);

grid on;

set(gca, 'xcolor', 'cyan', 'ycolor', 'green', 'color', 'black');

set(gcf, 'color', [.3 .3 .3]);

title('\fontsize{14}\bf\color{white}One sine wave from 0 to 2\pi');

xlabel('\fontsize{12}\color{cyan}X values (in terms of 2\pi)');
ylabel('\fontsize{12}\color{green}Sin(X)');

editmenu(gcf, 'CopyOptions', 'figure background color', 'UseFigureColor');
