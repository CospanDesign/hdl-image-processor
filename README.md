HDL Image Processing
====================

Image Processing Pipeline for MIT Aero Astro Group

The project is broken down into three main parts:

* Pynq: Using the pynq board demonstrate processing images using
  * Software only: Read an image from a file, process the image and save the image.
  * Static images using HDL: Read an image from a file, send it to the FPGA where the image will be process, read it back and save the file.
  * Streaming images using HDMI: Read a continuous stream of images using HDMI, Process the images and stream the output using HDMI.
* KC705:
  * Capture images from IMX252
  * Convert Bayer image data to RGB format
  * PCIE communication between the desktop and the FPGA
    * Store raw images on the host computer
    * Store processed images on the host computer
    * Configure the image processor pipeline
  * Process images
  * Output images over HDMI
* MIT UAV Rev C: This is similar to the KC705 except with 3 cameras

*Dependencies*

* Xilinx Vivado Version 2016.1
* Xilinx Arm Toolchain (This might be available on the Pynq board)
* Software Libraries
 * libtiff ??
 * libjpeg ??
 * libopencv ??

