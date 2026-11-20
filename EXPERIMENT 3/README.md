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
2. Image dimensions = 1086 × 1448 pixels
3. Global threshold = 0.2039
4. Threshold mask area = 627636 pixels
5. Region-growing area = 7518 pixels
6. Seed coordinates = (543, 724)
7. Region-growing tolerance = 0.080

## SEGMENTATION RESULTS

1. Original image = Medical image input (tumor_sample.png)
2. Global thresholding method = Otsu's method
3. Morphological operations = Opening and Closing
4. Region-growing method = Four-connected region growing
5. Threshold mask area = 627636 pixels
6. Region-growing area = 7518 pixels
7. Seed value = 0.0623
8. Segmentation tolerance = 0.080

## FIGURE 1 - ORIGINAL MEDICAL IMAGE

<img width="791" height="618" alt="image" src="https://github.com/user-attachments/assets/ce021251-2ed7-4df4-934b-848142990dc0" />


## FIGURE 2 - THRESHOLD SEGMENTATION

<img width="791" height="618" alt="image" src="https://github.com/user-attachments/assets/28d94a4f-56b6-4527-950b-b04f6b8e801a" />


## FIGURE 3 - REGION GROWING RESULT

<img width="791" height="618" alt="image" src="https://github.com/user-attachments/assets/666ceaee-3f7e-4dc5-8a95-f1ed2ce583c0" />


## FIGURE 4 - SEGMENTATION BOUNDARY OVERLAY

<img width="790" height="618" alt="image" src="https://github.com/user-attachments/assets/28429cb8-4cb7-4458-b575-21e63f3e642f" />


## RESULT

The experiment was performed successfully using MATLAB. The medical image was processed using global thresholding and four-connected region growing. The segmented regions were displayed and their areas were calculated.

The results demonstrate how image segmentation techniques can be used to identify tumor-like regions in medical images.
