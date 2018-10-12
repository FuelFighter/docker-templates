#include "ros/ros.h"
#include <opencv2/opencv.hpp>

int main(int, char**)
{
    cv::VideoCapture cap(0); // open the default camera
    if(!cap.isOpened())  // check if we succeeded
        return -1;

    cv::Mat edges;
    for(;;)
    {
        cv::Mat frame;
        cap >> frame; // get a new frame from camera
        if(cv::waitKey(30) >= 0) break;
    }
    // the camera will be deinitialized automatically in VideoCapture destructor
    return 0;
}
