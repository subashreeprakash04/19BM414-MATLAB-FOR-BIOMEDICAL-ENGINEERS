## EXPERIMENT 3: Tumor Segmentation Using Thresholding and Region Growing

## AIM

To segment a tumor-like region from a medical image using thresholding and region growing.

## INPUT

A de-identified teaching medical image such as tumor_sample.png. It may be grayscale or RGB.

## INPUT FILE / PARAMETERS

File name / model: tumor_sample.png

Variable: I

## THEORY / PRINCIPLE

Thresholding separates pixels based on their intensity values. Region growing starts from a selected seed pixel and adds neighbouring pixels whose intensity is sufficiently similar to the seed. These two methods are used to identify and separate a selected region from the surrounding medical image.

## PROCESSING FLOWCHART

<img width="851" height="265" alt="Screenshot 2026-11-20 101832" src="https://github.com/user-attachments/assets/a5a5bb8b-0a76-495d-9108-e4120f49bad1" />


## PROCEDURE

1. Read the medical image using MATLAB.
2. Convert the RGB image into grayscale if required.
3. Normalize the image intensity values.
4. Apply Gaussian smoothing to reduce noise.
5. Apply global thresholding using Otsu's method.
6. Remove small unwanted regions using morphological operations.
7. Select a seed point at the centre of the image.
8. Perform four-connected region growing using an intensity tolerance.
9. Display the threshold mask and region-growing result.
10. Overlay the segmented boundary on the original image.
11. Calculate and compare the segmented areas.

## OBSERVATION

1. Input file = tumor_sample.png
2. Image dimensions = (To be obtained from MATLAB)
3. Global threshold = (To be obtained from MATLAB)
4. Threshold mask area = (To be obtained from MATLAB)
5. Region-growing area = (To be obtained from MATLAB)
6. Seed coordinates = (To be obtained from MATLAB)
7. Region-growing tolerance = 0.080

## SEGMENTATION RESULTS

1. Original image = Medical image input
2. Global thresholding method = Otsu's method
3. Morphological operations = Opening and Closing
4. Region-growing method = Four-connected region growing
5. Threshold mask area = (Actual output in pixels)
6. Region-growing area = (Actual output in pixels)
7. Seed value = (Actual output)
8. Segmentation tolerance = 0.080

## FIGURE 1 - ORIGINAL MEDICAL IMAGE

![Figure 1 - Original Medical Image](images/experiment3_original.png)

## FIGURE 2 - THRESHOLD SEGMENTATION

![Figure 2 - Threshold Segmentation](images/experiment3_threshold.png)

## FIGURE 3 - REGION GROWING RESULT

![Figure 3 - Region Growing Result](images/experiment3_region_growing.png)

## FIGURE 4 - SEGMENTATION BOUNDARY OVERLAY

![Figure 4 - Segmentation Boundary Overlay](images/experiment3_overlay.png)

## RESULT

The experiment was performed successfully using MATLAB. The medical image was processed using global thresholding and four-connected region growing. The segmented regions were displayed and their areas were calculated.

The results demonstrate how image segmentation techniques can be used to identify tumor-like regions in medical images.
