fileID = fopen('weather_data.txt', 'r');
data = textscan(fileID, '%s %f %f %s', 'Delimiter', ',');

dates = data{1};
humidity = data{2};
temperature = data{3};
conditions = data{4};

unique_conditions = unique(conditions);
average_temperatures = zeros(size(unique_conditions));
data_counts = zeros(size(unique_conditions));

for i = 1:length(unique_conditions)
    condition_indices = strcmp(conditions, unique_conditions{i}) & temperature >= -10 & temperature <= 30;
    average_temperatures(i) = mean(temperature(condition_indices));
    data_counts(i) = sum(condition_indices);
    
    fprintf('%s: Ortalama Sıcaklık = %.2f °C, Veri Sayısı = %d\n', unique_conditions{i}, average_temperatures(i), data_counts(i));
end

figure;
plot(2,1);
bar(average_temperatures);
set(gca, 'XTick', 1:length(unique_conditions),'XTickLabel', unique_conditions);
title('Ortalama Sıcaklık');
ylabel('Sıcaklık (°C)');
xlabel('Hava Durumu Tipi');

fclose(fileID);
