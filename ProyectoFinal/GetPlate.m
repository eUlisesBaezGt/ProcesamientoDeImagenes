% ADAPTED Veysel AKSIN's Simple Text Recognition
% https://github.com/veyselaksin/DriverPlateRecognition

function [plate] = GetPlate(image)

    load LettsAndNums_TrainModel

    [h, w]=size(image); % get image size

    image=imresize(image, [300,500]); % the image we receive is resized

    % figure, imshow(image), title('Original Image');

    %% DET grey level

    threshold=graythresh(image);
    image=imbinarize(image, threshold);
    % figure, imshow(image), title('Black and White Image'); 

    reverse=imcomplement(image);
    % figure, imshow(reverse), title('Black and White Reversed Image');

    %% Remove Small Objects
    % bwareaopen don't need non-chracter object
    if w> 2000
        temp=bwareaopen(reverse,3500);
    else
        temp=bwareaopen(reverse, 3000);
    end

    %% Figure Cleaned Image and Extracted Image 
    % Show cleaned and extracted image for understand to better what we doing
    % figure, imshow(temp),title('Cleaned Image'); %Cleaned Image

    temp2=reverse-temp;
    temp2=bwareaopen(temp2,250);
    % figure, imshow(temp2), title('Extracted Image from Cleaned Image'); % Extracted image

    %% Tag letters with object tag
    % We are tagging each object with regionprops function
    [lbls, objs]=bwlabel(temp2);
    objfts=regionprops(lbls,'BoundingBox');

    % hold on 

    % pause(1);

    for n=1:size(objfts,1)
        rectangle('Position',objfts(n).BoundingBox, 'EdgeColor','y','LineWidth',2);
    end

    % hold off

    %% Finally operation
    % array to store plate
    plate=[];
    % t array is holds the correlation value of each object
    t=[];

    for n=1:objs
        [r,c]=find(lbls==n);
        char=reverse(min(r):max(r), min(c):max(c)); % keep to image max and min values for readed all char
        char=imresize(char,[42,24]);
        % figure, imshow(char), title('Character'); % we are showing keeped all character
        
        % pause(0.5); % show characters every 0.5 second
        
        x=[];
        % Find number of characters
        charnum=size(images,2);
        % We make comparisons and obtain correlation values.
        for k=1: charnum
            y=corr2(images{1,k},char);
            x=[x y];
        end  
        t=[t max(x)];
        % We delete characters with correlation values below 0.37

        if max(x)> 0.388
            % We look at which character it matches and print that character
            maxIndex=find(x==max(x));
            %We are printing all character as a string
            finalChar=cell2mat(images(2,maxIndex));
            plate=[plate, finalChar];
        end
    end

end
