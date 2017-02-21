/***************************************************************************

*   �� Copyright 2013 Xilinx, Inc. All rights reserved.

*   This file contains confidential and proprietary information of Xilinx,
*   Inc. and is protected under U.S. and international copyright and other
*   intellectual property laws. 

*   DISCLAIMER
*   This disclaimer is not a license and does not grant any rights to the
*   materials distributed herewith. Except as otherwise provided in a valid
*   license issued to you by Xilinx, and to the maximum extent permitted by
*   applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH
*   ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, 
*   EXPRESS, IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES
*   OF MERCHANTABILITY, NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR 
*   PURPOSE; and (2) Xilinx shall not be liable (whether in contract or 
*   tort, including negligence, or under any other theory of liability)
*   for any loss or damage of any kind or nature related to, arising under
*   or in connection with these materials, including for any direct, or any
*   indirect, special, incidental, or consequential loss or damage (including
*   loss of data, profits, goodwill, or any type of loss or damage suffered 
*   as a result of any action brought by a third party) even if such damage
*   or loss was reasonably foreseeable or Xilinx had been advised of the 
*   possibility of the same. 

*   CRITICAL APPLICATIONS 
*   Xilinx products are not designed or intended to be fail-safe, or for use
*   in any application requiring fail-safe performance, such as life-support
*   or safety devices or systems, Class III medical devices, nuclear facilities,
*   applications related to the deployment of airbags, or any other applications
*   that could lead to death, personal injury, or severe property or environmental
*   damage (individually and collectively, "Critical Applications"). Customer
*   assumes the sole risk and liability of any use of Xilinx products in Critical
*   Applications, subject only to applicable laws and regulations governing 
*   limitations on product liability. 

*   THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT 
*   ALL TIMES.

***************************************************************************/

#include "hls_opencv.h"
#include "../include/opencv_demo.h"
#include "../include/top.h"

using namespace cv;

void opencv_image_filter(IplImage *_src, IplImage *_dst) {
    Mat src(_src);
    Mat dst(_dst);
    cvCopy(_src, _dst);
    std::vector<Mat> layers;
    std::vector<KeyPoint> keypoints;
    split(src, layers);
    FAST(layers[0], keypoints, 20, true);
    for (int i = 0; i < keypoints.size(); i++) {
        rectangle(dst,
                  Point(keypoints[i].pt.x-1, keypoints[i].pt.y-1),
		  Point(keypoints[i].pt.x+1, keypoints[i].pt.y+1),
                  Scalar(255,0),
                  CV_FILLED);
    }
}

void GenMask(Mat &mask, std::vector<KeyPoint> keypoints);
void PaintMask(Mat &img, Mat &mask, Scalar s);
/*
void opencv_image_filter(IplImage *_src, IplImage *_dst) {
    Mat src(_src);
    Mat dst(_dst);
    cvCopy(_src, _dst);
    Mat mask(src.rows, src.cols, CV_8UC1);
    Mat dmask(src.rows, src.cols, CV_8UC1);
    std::vector<Mat> layers;
    std::vector<KeyPoint> keypoints;
    split(src, layers);
    FAST(layers[0], keypoints, 20, true);
    GenMask(mask, keypoints);
    dilate(mask, dmask, getStructuringElement(MORPH_RECT, Size(3,3), Point(1,1)));
    PaintMask(dst, dmask, Scalar(255,0));
}
*/

void GenMask(Mat &mask, std::vector<KeyPoint> keypoints) {
    for (int i = 0; i < mask.rows; i++) {
        for (int j = 0; j < mask.cols; j++) {
            mask.at<unsigned char>(i, j) = 0;
        }
    }
    for (int i = 0; i < keypoints.size(); i++) {
        mask.at<unsigned char>(keypoints[i].pt.y, keypoints[i].pt.x) = 1;
    }
}

void PaintMask(Mat &img, Mat &mask, Scalar s) {
    for (int i = 0; i < mask.rows; i++) {
        for (int j = 0; j < mask.cols; j++) {
            if (mask.at<unsigned char>(i, j) > 0) {
                for (int k = 0; k < img.channels(); k++)
                    *(img.data + img.step[0]*i + img.step[1]*j + k) = s.val[k];
            }
        }
    }
}

void hls_image_filter(IplImage *src, IplImage *dst) {
    AXI_STREAM src_axi, dst_axi;
    IplImage2AXIvideo(src, src_axi);
    image_filter(src_axi, dst_axi, src->height, src->width);
    AXIvideo2IplImage(dst_axi, dst);
}
