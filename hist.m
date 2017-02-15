
im = rgb2gray(imread('his1.jpg'));
% normalize the image to be between 0 and 1
im = im/max(max(im));
%imshow(im)
points = some_processing(im);
[x_p, y_p] = find (points);

[x, y] = meshgrid(1:size(im,1), 1:size(im,2))
r = 5;

circles = zeros(size(im));

for k = 1:length(x_p)
    circles = circles + (floor((x - x_p(k)).^2 + (y - y_p(k)).^2) == r);
end

% normalize circles
circles = circles/max(max(circles));

output = im + circles;

imshow(output)
