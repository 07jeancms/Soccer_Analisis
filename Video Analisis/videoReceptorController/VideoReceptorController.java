package videoReceptorController;

import java.io.File;
import java.util.ArrayList;

import org.opencv.core.Mat;

import openCv.Open_CV;
import openCv.Video_Processing;

public class VideoReceptorController {
	
	Open_CV openCV ;
	
	




	public String fileName(File videoFile){
		Video_Processing video = new Video_Processing("VidTest.mp4");
		boolean opn = video.videoIsOpen();
		System.out.println(opn);
		
		return videoFile.getName();
		
	}

	
}