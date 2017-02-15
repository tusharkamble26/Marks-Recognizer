I = imread('sample6.tif');
imshow(I);

I2 = im2bw(I,graythresh(I));
figure, imshow(I2)

I3 = histeq(I2);
figure, imshow(I3)