%Birinci Soru
a = 10
b = 2.5 * power(10,23)
c = 2 + 3 * sqrt(-1)
d = exp( sqrt(-1) * 2*pi / 3)

disp("-----------------------------------------");

%İkinci Soru
aVec = [3.14 15 9 26]
bVec = [2.71;8;28;182]
cVec = 5:-0.2:-5
dVec = logspace(0,1,100)
eVec = ['H' 'E' 'L' 'L' 'O']

disp("-----------------------------------------");

%Üçüncü Soru
aMat = 2 * ones(9,9)

d2 = [1 2 3 4 5 4 3 2 1]
bMat = diag(d2)

X = 1:100
cMat = reshape(X,[10,10])

dMat = NaN(3,4)

eMat = [13 -1 5; -22 10 -87]

fMat = randi([-3, 3], 5, 3);
disp("fMat =");
disp(fMat);

r = -3 + (3+3)*rand(5,3)

disp("-----------------------------------------");

%Dördüncü Soru
x = 1 / 1 + exp(-(a-15)/6)
b = power((sqrt(a) + nthroot(b,21)),pi)
cplusd = c + d;
cminusd = c - d;
ctimesd = cplusd * cminusd;
real_ctimesd = real(ctimesd);
sina = sin(a*pi / 3);
logt = log(real_ctimesd * sina);
conjc = conj(c);
ctimesconjc = c * conjc;
z = logt / ctimesconjc;
disp("z =");
disp(z);


disp("-----------------------------------------");

%Altıncı Soru

cSum = sum(cMat,2);
%--------------------------------------
eMean = mean(eMat,1);
%--------------------------------------
newRow = [1 1 1];
eMat(1, :) = newRow;
%--------------------------------------
cSub = cMat(2:9, 2:9);
%--------------------------------------
lin = 1:20;
% Burada Çift ve tek sayıları seçiyoruz.
Evens = lin(mod(lin, 2) == 0);
Odds = lin(mod(lin, 2) == 1);

Evens_Negative = Evens .* -1;

% Burda da yeni vektörü oluşturuyoruz.
new_lin = zeros(size(lin));
new_lin(1:2:end) = Odds;
new_lin(2:2:end) = Evens_Negative;

%--------------------------------------
r = rand(1, 5);
indices = find(r < 0.5);
r(indices) = 0;

%--------------------------------------

disp(cSum);
disp("-----------------------------------------");
disp(eMean);
disp("-----------------------------------------");
disp(eMat);
disp("-----------------------------------------");
disp(cSub);
disp("-----------------------------------------");
disp(new_lin);
disp("-----------------------------------------");
disp(r);

disp("-----------------------------------------");

%Yedinci Soru
% Define the x values
x = 0:0.1:2*pi;

% Calculate sine and cosine values
y1 = sin(x);
y2 = cos(x);

% Plot the sine and cosine functions
plot(x, y1, x, y2)

% Add labels and title
xlabel('Time (s)')
ylabel('Function value')
title('Sin and Cos functions')

% Set the x and y limits
xlim([0 2*pi])
ylim([-1.4 1.4])

% Add legend (optional)
legend('Sin', 'Cos')

% Show the plot
grid on
