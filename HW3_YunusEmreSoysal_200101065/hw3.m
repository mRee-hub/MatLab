vec = 5 * randn(500, 1) + 2;

sample_mean = mean(vec);
sample_std = std(vec);

disp(['Sample Mean: ', num2str(sample_mean)]);
disp(['Sample Standard Deviation: ', num2str(sample_std)]);

disp('-----------------------------------------------------------------')

num_flips = 5000;

coin_flips = rand(1, num_flips) < 0.5;

running_prob_heads = cumsum(coin_flips) ./ (1:num_flips);

plot(1:num_flips, running_prob_heads);
hold on;

plot([1, num_flips], [0.5, 0.5], 'k--');

xlabel('Number of Coin Flips');
ylabel('Probability of Heads');
title('Sample Probability of Heads in n flips of a simulated coin');

legend('Sample Probability', 'Fair Coin', 'Location', 'southoutside');

grid on;

hold off;

disp('-----------------------------------------------------------------')

poisspdf2 = @(x, lambda) (lambda.^x)*exp(-lambda)./factorial(x);
x = 0:100;
x = x';
poiss_cdf = @(lambda) [0; cumsum(poisspdf2(x, lambda))];
poissrnd2 = @(lambda)  find(poiss_cdf(lambda) < rand(), 1, 'last')-1;

num_samples = 1000;
lambda = 5;
samples = zeros(num_samples, 1);
for ii = 1:num_samples
    samples(ii) = poissrnd2(lambda);
end

[N, X] = hist(samples, 0:max(samples));
prob_mass = N / sum(N);

bar(X, prob_mass, 'b');
hold on;

pmf = poisspdf2(X, lambda);
plot(X, pmf, 'r', 'LineWidth', 2);

xlabel('Value');
ylabel('Probability');
title('Poisson Distribution and Observed Histogram');
legend('Experimental Histogram', 'Actual Poisson Distribution');
hold off;

disp('-----------------------------------------------------------------')

data = {'Joe', 'Smith', 30000;
        'Sarah', 'Brown', 150000;
        'Pat', 'Jackson', 120000};

disp('Original cell array:');
disp(data);

sarah_index = find(strcmp(data(:,1), 'Sarah'));

data{sarah_index, 2} = 'Meyers';

disp('Cell array after Sarah changes her last name:');
disp(data);

pat_index = find(strcmp(data(:,1), 'Pat'));

data{pat_index, 3} = data{pat_index, 3} + 50000;

disp('Cell array after Pat gets a raise:');
disp(data);

disp('-----------------------------------------------------------------')

a = dir;

size_a = size(a);

field_names = fieldnames(a);

for i = 1:numel(a)
    if ~a(i).isdir
        fprintf('File %s contains %d bytes\n', a(i).name, a(i).bytes);
    end
end

disp('-----------------------------------------------------------------')

im = displayRGB('anıtkabir.jpg');


