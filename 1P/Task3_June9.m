img=imread('escudo.jpg');
figure(); imshow(img);

R=img(:,:,1);
G=img(:,:,2);
B=img(:,:,3);
[rows, columns] = size(R);

% Rotate
RImg = imrotate(img, 27);
figure(); imshow(RImg);

% Traslate
TImg=imtranslate(img,[250,140]);
figure(); imshow(TImg);

% Scale
SImg=imresize(img,[150,250]);
figure(); imshow(SImg);


% Vertical Mirror
figure(); imshow(fliplr(img));

% Horizontal Mirror
figure(); imshow(flip(img));


% Up Left
% figure(); imshow(img(1:ceil(rows/2),1:ceil(columns/2),1:3));
ul = imcrop(img, [1, 1, rows/2, columns/2]);
figure(); imshow(ul);

% Down Right
% figure(); imshow(img(ceil(rows/2):end,ceil(columns/2):end,1:3));
dr = imcrop(img, [rows/2, columns/2, rows, columns]);
figure(); imshow(dr);

% 2 practic applications
% Las dos aplicaciones practicas pueden ser por ejemplo : Si uno trabaja en edición de fotografía, 
% puede aplicar algunas de las transformaciones para que de esta manera la foto pueda quedar bien y poder
% presentarla al cliente. Otra de las aplicaciones puede estar enfocada al ámbito de los médicos, por
% ejemplo con los rayos x, se pueden aplicar algunos filtros o aplicar algunas transformaciones para poder 
% bien la imagen, para hacerla más clara y ver si hay algo al fondo y que se pueda detectar en la imagen 
% si el paciente esta enfermo.
