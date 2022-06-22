img = rgb2gray(imread("up.png"));

gaussNoise = imnoise(img, 'gaussian');
figure(1); imshow(gaussNoise); title('Gaussian noise');

poissonNoise = imnoise(img, 'poisson');
figure(2); imshow(poissonNoise); title('Poisson noise');

spNoise = imnoise(img, 'salt & pepper');
figure(3); imshow(spNoise); title('Salt & pepper noise');

speckleNoise = imnoise(img, 'speckle');
figure(4); imshow(speckleNoise); title('Speckle noise');
