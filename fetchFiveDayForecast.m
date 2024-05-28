function [tempJSON, humidityJSON, windSpeedJSON, timeJSON] = fetchFiveDayForecast(city, apiKey)

    % OpenWeatherMap API'sine erişim için temel URL ve parametreler
    baseUrl = 'https://api.openweathermap.org/data/2.5/forecast';
    units = 'metric';  % Ölçüm birimi
    fullUrl = sprintf('%s?q=%s&appid=%s&units=%s', baseUrl, city, apiKey, units);

    try
        % API'den veri çekme
        response = webread(fullUrl);

        % Hava durumu verilerini ayrıştırma
        listofdata = response.list;

        % Hava durumu verilerinden ilgili bilgileri çıkarma
        tempJSON = cellfun(@(x) x.main.temp, listofdata);
        humidityJSON = cellfun(@(x) x.main.humidity, listofdata);
        windSpeedJSON = cellfun(@(x) x.wind.speed, listofdata);
        timeJSON = cellfun(@(x) datetime(x.dt, 'ConvertFrom', 'posixtime', 'TimeZone', 'UTC'), listofdata);

    catch
        % Hata durumunda mesaj gösterme
        msgbox('Invalid City', 'Hata', 'error');
    end
end