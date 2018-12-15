#include <opencv2/opencv.hpp>
#include <stdlib.h>
#include <stdio.h>
#include <iostream>

using namespace std;
using namespace cv;


/* @ function main */
int main(int argc, char** argv)
{
	// open the default camera
	cv::VideoCapture cap(0);

	// check if we succeeded
	if (!cap.isOpened())
		return -1;

	cv::namedWindow("WebCam Frame Capture", 1);

	cv::CascadeClassifier face_classifier;

	face_classifier.load("c:/opencv/sources/data/haarcascades/haarcascade_frontalface_default.xml");

	for (; ; ) {
		cv::Mat frame;

		bool frame_valid = true;

		try {
			cap >> frame;
		}
		catch (cv::Exception e) {
			std::cerr << "Exception occurred. Ignoring frame..." << e.err << std::endl;
			frame_valid = false;
		}

		if (frame_valid) {
			try {
				// convert captured frame to gray scale & equalize
				cv::Mat grayframe;
				cv::cvtColor(frame, grayframe, CV_BGR2GRAY);
				cv::equalizeHist(grayframe, grayframe);

				// -------------------------------------------------------------
				// face detection routine

				// a vector array to store the face found
				std::vector<cv::Rect> faces;

				face_classifier.detectMultiScale(grayframe, faces,
					1.1, // increase search scale by 10% each pass
					3,   // merge groups of three detections
					CV_HAAR_FIND_BIGGEST_OBJECT | CV_HAAR_SCALE_IMAGE,
					cv::Size(30, 30)
				);

				// -------------------------------------------------------------
				// draw the results
				for (int i = 0; i < faces.size(); i++) {
					cv::Point lb(faces[i].x + faces[i].width, faces[i].y + faces[i].height);
					cv::Point tr(faces[i].x, faces[i].y);

					cv::rectangle(frame, lb, tr, cv::Scalar(0, 255, 0), 3, 4, 0);
				}
			}
			catch (cv::Exception& e) {
				std::cerr << "Exception occurred. Ignoring frame... " << e.err << std::endl;
			}
		}

		cv::imshow("WebCam Frame Capture", frame);

		if (waitKey(30) >= 0) break;
	}

	

	// the camera will be deinitialized automatically in VideoCapture destructor
	return 0;
}
