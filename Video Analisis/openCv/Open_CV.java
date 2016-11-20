package openCv;

import java.io.IOException;
import java.util.ArrayList;

import org.opencv.core.Mat;


public class Open_CV {
	
	public static String VIDEO_PATH = "C:/Users/jeanc/Documents/Eclipse_Projects/OpenCV/";

	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub
		Video_Processing video = new Video_Processing("Vid.mp4");

		ArrayList<Mat> frames = video.readFrames();
		boolean opn = video.videoIsOpen();
		System.out.println(opn);
		
		int frameNumber = 1;
		
		ArrayList<Mat> HSVframes = video.convertToHSV(frames);
	
		
		System.out.println("Exit");
	}
}
