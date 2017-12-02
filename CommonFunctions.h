#ifndef COMMONFUNCTIONS_H
#define COMMONFUNCTIONS_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <opencv2/opencv.hpp>

#include <iostream>
#include <fstream>
#include <vector>
#include <cmath>


using namespace cv;
using namespace std;

const double MAX_DISTANCE = 50;
const double PI = 3.141592653589793;

int draw_lines(Mat frame, vector<double*> lines_vc, Scalar line_color, int line_width);
int draw_contour(Mat frame, vector<Point> points, Scalar point_color, int line_width);
int save_track_results(vector<Point> points, string fname);
float distance(float x1, float y1, float x2, float y2);

#endif // COMMONFUNCTIONS_H
