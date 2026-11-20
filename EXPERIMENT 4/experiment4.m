%% EXPERIMENT 4: DICOM IMAGE ANALYSIS
% Complete program:
% 1. Read a DICOM medical image and its metadata
% 2. Display selected technical metadata
% 3. Read and visualize the original DICOM image
% 4. Normalize the image for display
% 5. Convert CT pixel values into Hounsfield Units (HU), if available
% 6. Apply illustrative CT windowing
% 7. Select a Region of Interest (ROI)
% 8. Calculate ROI mean, standard deviation, minimum and maximum
%
% This program requires MATLAB functions for DICOM image processing
% and ROI selection.
% The input must be a de-identified DICOM medical image (.dcm).
% Patient-identifying information must not be included in the report.

%% EXPERIMENT 4 - DICOM IMAGE ANALYSIS
clear;
close all;
clc;

%% INPUT
filename = 'sample_ct.dcm';

%% READ HEADER
info = dicominfo(filename);

fprintf('\n===== DICOM METADATA =====\n');

if isfield(info,'Modality')
    fprintf('Modality = %s\n',string(info.Modality));
end

if isfield(info,'Rows')
    fprintf('Rows = %d\n',info.Rows);
end

if isfield(info,'Columns')
    fprintf('Columns = %d\n',info.Columns);
end

if isfield(info,'SliceThickness')
    fprintf('Slice thickness = %.3f mm\n', ...
        double(info.SliceThickness));
end

if isfield(info,'PixelSpacing')
    fprintf('Pixel spacing = ');
    disp(double(info.PixelSpacing));
end

%% READ PIXELS
I = double(dicomread(info));

fprintf('Stored minimum = %.3f\n',min(I(:)));
fprintf('Stored maximum = %.3f\n',max(I(:)));

%% ORIGINAL DISPLAY
figure('Name','DICOM Image');
imshow(I,[]);
colormap gray;
colorbar;
title('DICOM Image');

%% NORMALIZED DISPLAY
Inorm = mat2gray(I);

figure('Name','Normalized DICOM');
imshow(Inorm,[]);
colormap gray;
colorbar;
title('Normalized DICOM Image');

%% CT RESCALING IF AVAILABLE
if isfield(info,'RescaleSlope') && ...
   isfield(info,'RescaleIntercept')

    slope = double(info.RescaleSlope);
    intercept = double(info.RescaleIntercept);

    HU = I*slope + intercept;

    fprintf('HU minimum = %.2f\n',min(HU(:)));
    fprintf('HU maximum = %.2f\n',max(HU(:)));

    center = 40;
    width = 400;

    lower = center-width/2;
    upper = center+width/2;

    windowed = mat2gray(min(max(HU,lower),upper));

    figure('Name','Windowed CT');
    imshow(windowed,[]);
    colormap gray;
    colorbar;
    title('Illustrative CT Window');

end

%% ROI ANALYSIS
figure('Name','ROI Analysis');
imshow(Inorm,[]);
title('Draw ROI and double-click');

roi = drawrectangle;
wait(roi);

mask = createMask(roi);
values = Inorm(mask);

fprintf('\n===== ROI OBSERVATIONS =====\n');
fprintf('ROI pixels = %d\n',numel(values));
fprintf('ROI mean = %.4f\n',mean(values));
fprintf('ROI standard deviation = %.4f\n',std(values));
fprintf('ROI minimum = %.4f\n',min(values));
fprintf('ROI maximum = %.4f\n',max(values));

