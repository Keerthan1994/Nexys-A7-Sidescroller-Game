
% read image
% Read the image from the file
[filename, pathname] = uigetfile('*.png','Pick an M-file');
img = imread(filename);
file_name = [filename '.mem'];
%transparent_color = [0 0 0];
transparent_color = -1;
%% preprocess

% image dimension
dimen = size(img);
n_rows = dimen(1);
n_cols = dimen(2);
n_chans = dimen(3);

% extract foreground region
if transparent_color ~= -1
    pos1 = img(:, :, 1) == transparent_color(1);
    pos2 = img(:, :, 2) == transparent_color(2);
    pos3 = img(:, :, 3) == transparent_color(3);
    pos_fg = ~(pos1 & pos2 & pos3);
    pos_fg_3d = pos_fg;
    pos_fg_3d(:, :, 2) = pos_fg;
    pos_fg_3d(:, :, 3) = pos_fg;
else
    pos_fg_3d = logical(ones(n_rows, n_cols, n_chans));
end

% normalize to 0..15 per channel
img_12 = uint8(double(img) / 255.0 * 15.0);

% replace black color "000" with "001"
pos1 = img_12(:, :, 1) == 0;
pos2 = img_12(:, :, 2) == 0;
pos3 = img_12(:, :, 3) == 0;
pos = pos1 & pos2 & pos3;
pos_3d = pos;
pos_3d(:, :, 1) = 0;
pos_3d(:, :, 2) = 0;
pos_3d(:, :, 3) = pos;
img_12(pos_3d) = 1;

% whiten the transparent region in th 12-bit image
img_tmp = uint8(zeros(n_rows, n_cols, n_chans));
img_tmp(pos_fg_3d) = img_12(pos_fg_3d);
img_12 = img_tmp;

%% generate mem file

% create file
fout = fopen(file_name, 'w');

% write hex values
for i=1:n_rows
    for j=1:n_cols
        fprintf(fout, '%x', img_12(i,j,:));
        fprintf(fout, '\n');
    end
end

% close file
fclose(fout);
%% double check

% change back to 0..255 per channel
img_24 = uint8(double(img_12) / 15.0 * 255.0);

% display
imshow(img_24);