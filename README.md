Real-time salient closed boundary tracking using perceptual grouping and shape priors (BMVC 2017)
============================
This code is implemeted for the paper<br>
	`"Xuebin Qin, Shida He, Zichen Zhang, Masood Dehghan and Martin Jagersand. "Real-time salient closed boundary tracking using perceptual grouping and shape priors." the 28th British Machine Vision Conference (BMVC), September 2017."` <br>

The demo video can be found https://www.youtube.com/watch?v=Z5ty_rKveVc&t=68s.

The dataset is published https://github.com/NathanUA/SalientClosedBoundaryTrackingDataset.

USED LIBRARIES
----------------------------------------------
This implementation is based on `Opencv 2.4.9(3.1.0)`, `Boost 1.63.0` and `ubuntu 14.04 64 bit`.

The edge detector used here is EdgeDrawing(EDLib.h) which is proposed in "C. Topal, C. Akinlar, Edge Drawing: A Combined Real-Time Edge and Segment Detector,” Journal of Visual Communication and Image Representation, 23(6), 862-872, 2012." and can be downloaded from http://ceng.anadolu.edu.tr/CV/downloads/downloads.aspx. We include the lib in the root directory. It is worth to note that we are using the 64 bit ubuntu version of Edge Drawing. We sugggest to test our algorithm on a 64bit Ubuntu OS.

QUICKSTART
-------------------------------------------------
Git clone or Download the zip file and unzip it.<br>
Go to the root path<br>
	`"make"`<br>
then, use command "./SCBT video_proc video_path" to run the code.<br>
For example, read video from .avi file:<br>
	`"./SCBT 1 ./RECORDED_VIDEO.avi"`<br>
or read video from webcam:<br>
	 `"./SCBT 0"`<br>

video_proc: `"0"`: read file from your webcam, `"1"`: read video from a .avi file <br> 
video_path: specify the video sequence to be loaded. If video_proc == 0, it will be neglected.

TRACKING CONTROL
--------------------------------------------------
(1). Click mouse left button to initialize a<br>
　　polygon in `"Display"` window.<br>
　　When read video from a webcam,<br>
　　you have to press key `"i"` before<br>
　　initialization.<br>
(2). Click mouse middle button to finish initialization.<br>
(3). Press key `"space"` to run tracking continuously or<br>
　　press key `"s"` to run tracking frame by frame.<br>
　　Key `"r"` can recover the<br>
　　continuously tracking model).

CONTACTS
--------
Xuebin Qin<br>
Department of Computing Science<br>
University of Alberta<br>
Edmonton, AB, Canada, T6G 2E8<br>

Email:<br>
xuebin@ualberta.ca<br>
xuebinua@gmail.com<br>
Homepage: http://webdocs.cs.ualberta.ca/~xuebin/</br>
