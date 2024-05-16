function im = displayRGB(filename)

    img = imread(filename);
    
    [h, w, ~] = size(img);
    if h > w
        new_h = 800;
        new_w = round(w * (new_h / h));
    else
        new_w = 800;
        new_h = round(h * (new_w / w));
    end
    img_resized = imresize(img, [new_h, new_w], 'bicubic');

    red_layer = img_resized(:, :, 1);
    green_layer = img_resized(:, :, 2);
    blue_layer = img_resized(:, :, 3);

    composite_img = zeros(2 * new_h, 2 * new_w, 3, 'uint8');
    composite_img(1:new_h, 1:new_w, :) = img_resized;
    composite_img(1:new_h, new_w+1:end, 1) = red_layer;
    composite_img(new_h+1:end, 1:new_w, 2) = green_layer;
    composite_img(new_h+1:end, new_w+1:end, 3) = blue_layer;

    figure, imshow(composite_img, 'InitialMagnification', 'fit'), title('Composite Image');
    im = composite_img;
end

