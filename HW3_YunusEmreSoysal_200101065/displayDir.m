function displayDir()
    % Get the contents of the current directory
    a = dir;

    % Loop through all elements of 'a'
    for i = 1:numel(a)
        % Check if the element is not a directory
        if ~a(i).isdir
            fprintf('File %s contains %d bytes\n', a(i).name, a(i).bytes);
        end
    end
end
