# Image Edge Detection Using MATLAB

By [Naimur Rahman](https://github.com/nayeem-rafi)

## [Click for Files](https://drive.google.com/drive/folders/1HVaZivlQofcjM9I6yTO8SXeWbkWOX0JU?usp=sharing)

## Introduction
This MATLAB project demonstrates how to perform edge detection on an image using the Sobel filter. The script converts the image to grayscale, applies vertical and horizontal edge detection, and combines the results to highlight the edges.

## Objective
The primary goals of this project are to:
1. Convert a color image to grayscale.
2. Apply Sobel filters to detect edges in both vertical and horizontal directions.
3. Display the resulting edge-detected image.

## Description
 This MATLAB code processes an image by converting it to grayscale and applying a Sobel filter for edge detection. It calculates vertical and horizontal edges, combines them, normalizes the result to the range of 0-255, and displays the enhanced edge-detected image in grayscale.

## Analyzing the Input
The input image (`davis_hall_building.jpeg`) is read from the current directory. The script processes this image to detect edges based on intensity gradients.

## Edge Detection with Sobel Filter
1. **Grayscale Conversion**:  
   The image is converted from RGB to grayscale using the `rgb2gray()` function, which simplifies the edge detection process.

2. **Sobel Filter Application**:  
   The Sobel filter is applied to detect edges:
   - **Vertical Edge Detection**: Using the vertical Sobel kernel.
   - **Horizontal Edge Detection**: Using the transpose of the vertical kernel.

3. **Combining Results**:  
   The results from both vertical and horizontal edge detections are combined using the square root of the sum of squares to create a single edge-detected image.

<h1 align="center">
**Original Image**
</h1>
<p align="center">
<img src="https://github.com/user-attachments/assets/d61b0a2f-1880-491b-abfe-6c1e705f9812" width="620">
</p>

<h1 align="center">
**Edge Detected Image**
</h1>
<p align="center">
<img src="https://github.com/user-attachments/assets/d9f5a257-62cf-43c1-b72d-ec4ce3bc5eda" width="620">
</p>

## How the Code Works
1. The image is loaded using `imread()`, and converted to grayscale.
2. Sobel filter kernels are defined for both vertical and horizontal edge detection.
3. The `filter2()` function applies the filters to the grayscale image.
4. The magnitude of the edge response is calculated and normalized.
5. The final edge-detected image is displayed using `imshow()`.

## How to Run the Code
1. Ensure MATLAB is installed on your system.
2. Place the `davis_hall_building.jpeg` image in the same directory as your script.
3. Run the script. The edge-detected image will be displayed as output.

   Key steps:
   - Adjust the image filename in the script if necessary.
   - Explore the effects of edge detection on different images by replacing the input image.

## Conclusion
This project provides a straightforward method for performing edge detection in MATLAB. By applying Sobel filters, users can effectively highlight edges within an image, a common technique in image processing used for feature detection and image analysis.

Feel free to modify the kernel parameters or experiment with different images to gain a deeper understanding of edge detection techniques.
