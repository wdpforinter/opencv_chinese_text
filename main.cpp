#include <stdlib.h>
#include <string>
#include <iostream>
#include "Cv310Text.h"
#include <opencv2/opencv.hpp>

using namespace std;

int main(int argc, char *argv[])
{
    std::string font_file = "./simfang.ttf";
    Cv310Text text(font_file.c_str());
    cv::Mat img = cv::imread("./1.jpg");
    if(img.empty())
    {
      return 0;
    }
    text.putText(img, L"OPENCV 显示中文", cvPoint(30, 85), CV_RGB(255, 0, 0));
	text.putText(img, L"OPENCV 显示中文", cvPoint(30, 135), CV_RGB(255, 100, 200));
    cv::imshow("img", img);
    cv::waitKey(0);
    return 0;
}
