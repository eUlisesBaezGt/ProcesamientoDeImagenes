function [] = SavePlates(plates)
    % Delete all content from results.txt file
    fid = fopen('results.txt', 'w');
    fclose(fid);

    for i = 1:length(plates)
        % Show in console
        fprintf('%s\n', plates{i});
        % Save to file results.txt
        fid = fopen('results.txt', 'a');
        fprintf(fid, '%s\n', plates{i});
        fclose(fid);
    end
end

