## EXPERIMENT 4: DICOM Image Analysis

## AIM

To read, visualize and quantitatively analyse a DICOM medical image using MATLAB.

## INPUT

A de-identified DICOM file such as sample_ct.dcm. Patient identifiers must not be copied into the
report.

## INPUT FILE / PARAMETERS

File name / model: sample_ct.dcm

Variable(s): info, I, HU, roi, mask, values

## THEORY / PRINCIPLE

DICOM stores image pixels together with acquisition and technical metadata. dicominfo reads the
header and dicomread reads the image. For CT, rescale slope and intercept may be used to obtain
physical CT values.

## PROCESSING FLOWCHART

<img width="887" height="303" alt="image" src="https://github.com/user-attachments/assets/7192ba11-620d-480f-b643-78101f81f2a1" />

## PROCEDURE

1. Read DICOM metadata.
2. Display selected technical metadata.
3. Read the pixel array.
4. Display original and normalized images.
5. If applicable, convert CT values using rescale slope/intercept.
6. Apply an illustrative window.
7. Draw an ROI and calculate mean, standard deviation, minimum and maximum.

## OBSERVATION

1. Input file = sample_ct.dcm
2. Image dimensions = (Rows × Columns)
3. Modality = (MATLAB output)
4. Stored minimum and maximum = (MATLAB output)
5. ROI pixel count = (MATLAB output)

## DICOM IMAGE ANALYSIS RESULTS

1. Image reading = DICOM format
2. Normalization = mat2gray()
3. CT window center = 40
4. CT window width = 400
5. ROI mean, standard deviation, minimum and maximum = (MATLAB output)

## FIGURE 1 - ORIGINAL DICOM IMAGE



## FIGURE 2 - NORMALIZED DICOM IMAGE



## FIGURE 3 - WINDOWED CT IMAGE



## FIGURE 4 - ROI ANALYSIS



## RESULT

The experiment was performed successfully using MATLAB. The DICOM image was read, visualized, and analysed. The ROI statistical values were calculated successfully.
Final result / value: DICOM image analysis completed successfully.
