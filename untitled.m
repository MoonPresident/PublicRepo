strings = dir("./elec4630_images")
length(strings)
for i = 1:length(strings)
    if(length(strings(i).name) < 3)
        continue;
    end
    
    image = imread(sprintf("%s/%s", strings(i).folder, strings(i).name));
%     image = imrotate(image, -90);
    [Y, X, ~] = size(image);
    scale = 800 / Y;
    image = imresize(image, scale);
    imshow(image);
    w = waitforbuttonpress;
    imwrite(image, sprintf("%s/scaled_%s", strings(i).folder, strings(i).name));
end