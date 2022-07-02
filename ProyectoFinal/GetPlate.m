function plate = GetPlate(image)
    % Obtain plate text from image with OCR (PLATES LOCATED IN INFERIOR CENTER PART OF IMAGE)
    plate = ocr(image);
    % plate = ocr(images{i}(end-100:end, end-100:end));
    % Extract the text from the plate
    plate = plate.Text;
    % Remove all non-alphanumeric characters from the text
    plate = regexprep(plate, '[^a-zA-Z0-9]', '');
    % Remove all spaces from the text
    plate = regexprep(plate, ' ', '');

end
