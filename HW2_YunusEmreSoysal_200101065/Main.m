% Create dataset
num_students = 10000;
departments = {'Computer', 'Mechanical', 'Electrical', 'Civil', 'Chemical'};
dataset = cell(num_students, 4); % Student ID, Department, Midterm Score, Final Exam Score

for i = 1:num_students
    % Assign Student ID
    dataset{i, 1} = i;
    
    % Assign Department randomly
    random_index = randi(length(departments));
    department_name = departments{random_index};
    dataset{i, 2} = department_name;
    
    % Generate random scores
    dataset{i, 3} = randi([0, 100]); % Midterm Score
    dataset{i, 4} = randi([0, 100]); % Final Exam Score
end

% Example usage: Calculate average final exam score for a random department
random_department_index = randi(length(departments));
random_department_name = departments{random_department_index};
avg_final_score_random = AverageGrades(dataset, random_department_name);
disp(['"', random_department_name, '" bölümünde ortalama final sınavı notu: ', num2str(avg_final_score_random)]);
