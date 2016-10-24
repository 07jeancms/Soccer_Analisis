package videoReceptorServlet;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.io.FileUtils;

import com.google.gson.Gson;

import videoReceptorController.VideoReceptorController;
@WebServlet("/videoReceptor")
@MultipartConfig
public class VideoReceptorServlet extends HttpServlet {

	// API Keys
	public static final String API_METHOD = "method";
	
	// API Methods
	public static final String LOAD_VIDEO = "loadVideo";
	

	// API Parameters
	public static final String VIDEO_FILE = "video";

	public static final String MESSAGE_ERROR = "Lo lamentamos pero el documento no se ha procesar. ";
	public static final String MESSAGE_SUCCESS = "El documento se ha procesado con exito. ";

	private static final Gson gson = new Gson();
	private static final long serialVersionUID = 1L;

	// Response Parameters
	String apiResponse = "";
	boolean success = true;

	// ...
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Controller
		VideoReceptorController videoController = new VideoReceptorController();
	
		// Document parameters
		

		System.out.println("METHOD\t" + request.getParameter(API_METHOD) + " \n");
		switch (request.getParameter(API_METHOD)) {
		// Case CREATE_DOCUMENT or UPDATE_DOCUMENT
		case LOAD_VIDEO:
			File videoFile = null;
			try {
				
				 videoFile = getFileFromParameter(request);
				
				}
			 catch (Exception e) {
				// TODO: handle exception
			}
			apiResponse = videoController.fileName(videoFile);

			break;
		default:
			break;
		}

		
		response.setCharacterEncoding("UTF-8");
		response.getWriter().println(gson.toJson(apiResponse));
	}

	public File getFileFromParameter(HttpServletRequest request) throws IOException, ServletException {
		Part filePart = request.getPart(VIDEO_FILE);
		InputStream is = filePart.getInputStream();
		File file = new File("Vid.mp4");
		FileUtils.copyInputStreamToFile(is, file);
		return file;
	}

}
