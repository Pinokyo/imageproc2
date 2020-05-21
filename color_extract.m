function color_extract()

%read image
I = imread('hw3.jpg');
%convert to HSV
hsv_image = rgb2hsv(I);

height = size(hsv_image, 1);
width = size(hsv_image, 2);

%detect red color
for i=1:height
    for j=1:width
        if hsv_image(i,j, 1) >= 0.0 && hsv_image(i,j, 1) <= 0.03 && hsv_image(i,j, 2) ~= 0 || hsv_image(i,j, 1) > 0.85
        else
            %make others gray
            hsv_image(i, j, 1) = 0.62;
            hsv_image(i, j, 2) = 0;
            hsv_image(i, j, 3) = 0.6;
        end
    end
end
%display
J = hsv2rgb(hsv_image);
figure; imshow(J);

hsv_image = rgb2hsv(I);

%detect magenta color
for i=1:height
    for j=1:width
        if hsv_image(i,j, 1) >= 0.7 && hsv_image(i,j, 1) <= 0.9 && hsv_image(i,j, 2) ~= 0
        else
            %make others gray
            hsv_image(i, j, 1) = 0.62;
            hsv_image(i, j, 2) = 0;
            hsv_image(i, j, 3) = 0.6;
        end
    end
end

%display
J = hsv2rgb(hsv_image);
figure; imshow(J);

hsv_image = rgb2hsv(I);

%detect blue color
for i=1:height
    for j=1:width
        if  hsv_image(i,j, 1) >= 0.45 && hsv_image(i,j, 1) <= 0.54 && hsv_image(i,j, 2) ~= 0
        else
            %make others gray
            hsv_image(i, j, 1) = 0.62;
            hsv_image(i, j, 2) = 0;
            hsv_image(i, j, 3) = 0.6;
        end
    end
end

%display
J = hsv2rgb(hsv_image);
figure; imshow(J);

hsv_image = rgb2hsv(I);

%detect dark blue color
for i=1:height
    for j=1:width
        if hsv_image(i,j, 1) >= 0.6 && hsv_image(i,j, 1) <= 0.7333 && hsv_image(i,j, 2) ~= 0
        else
            %make others gray
            hsv_image(i, j, 1) = 0.62;
            hsv_image(i, j, 2) = 0;
            hsv_image(i, j, 3) = 0.6;
        end
    end
end

%display
J = hsv2rgb(hsv_image);
figure; imshow(J);

hsv_image = rgb2hsv(I);

%detect yellow color
for i=1:height
    for j=1:width
        if hsv_image(i,j, 1) >= 0.15 && hsv_image(i,j, 1) <= 0.2 && hsv_image(i,j, 2) ~= 0
        else
            %make others gray
            hsv_image(i, j, 1) = 0.62;
            hsv_image(i, j, 2) = 0;
            hsv_image(i, j, 3) = 0.6;
        end
    end
end

%display
J = hsv2rgb(hsv_image);
figure; imshow(J);

hsv_image = rgb2hsv(I);

%detect green color
for i=1:height
    for j=1:width
        if hsv_image(i,j, 1) >= 0.2 && hsv_image(i,j, 1) <= 0.39 && hsv_image(i,j, 2) ~= 0
        else
            %make others gray
            hsv_image(i, j, 1) = 0.62;
            hsv_image(i, j, 2) = 0;
            hsv_image(i, j, 3) = 0.6;
        end
    end
end
 
J = hsv2rgb(hsv_image);
figure; imshow(J);

return