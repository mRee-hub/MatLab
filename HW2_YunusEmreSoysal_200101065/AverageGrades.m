function avg_final_score = AverageGrades(dataset, department_name)
    % Initialize sum and count
    sum_final_score = 0;
    count_students = 0;
    
    % Loop through the dataset
    for i = 1:size(dataset, 1)
        % Check if the student belongs to the specified department
        if strcmp(dataset{i, 2}, department_name)
            % Increment count
            count_students = count_students + 1;
            
            % Add final exam score
            sum_final_score = sum_final_score + dataset{i, 4};
        end
    end
    
    % Check if any student was found in the specified department
    if count_students > 0
        avg_final_score = sum_final_score / count_students;
    else
        avg_final_score = NaN;
        disp('Bu bölümde hiç öğrenci bulunamadı.');
    end
end
