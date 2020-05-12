package com.neon.handler;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.neon.model.Audio;
import com.neon.model.Customer;
import com.neon.model.Document;
import com.neon.model.Login;
import com.neon.model.ShareFiles;
import com.neon.model.Video;
import com.neon.model.photos;
import com.neon.util.AudioDAO;
import com.neon.util.CustomerDB;
import com.neon.util.LoginDBAdmin;
import com.neon.util.PhotosDAO;
import com.neon.util.ShareFilesDAO;
import com.neon.util.VideoDAO;
import com.neon.util.uploadDAO;


@WebServlet("/user")
public class userHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		HttpSession session = request.getSession();
		String userName = (String) session.getAttribute("userName");
		
		
		try {
			
			
			List<Customer> customerDeatils  = CustomerDB.getCustomerList(userName);
			request.setAttribute("customerDetails", customerDeatils);
			
			List<Audio> audioDetails =  AudioDAO.getAudioList(userName);
			request.setAttribute("audioDetails", audioDetails);
			
			List<ShareFiles> shareFileDetails =  ShareFilesDAO.getSharedFileList(userName);
			request.setAttribute("shareFileDetails", shareFileDetails);
			
			
			List<photos> photoDetails =  PhotosDAO.getPhotoList(userName);
			request.setAttribute("photoDetails", photoDetails);
			
			List<Video> videoDetails =  VideoDAO.getVideoList(userName);
			request.setAttribute("videoDetails", videoDetails);
			
			//Implemented by Dilmi
			List<Document> documentDetails = uploadDAO.getDocumentlist(userName);
			request.setAttribute("documentDetails",documentDetails);
		
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		Login log = new Login();
		
		
		log.setEmail((String) session.getAttribute("userName"));
		log.setPassword((String) session.getAttribute("password"));
		LoginDBAdmin checkCredentials = new LoginDBAdmin();
		try {
			
			boolean res = checkCredentials.adminLog(log);
			if(res == true ) {
				
				
				response.sendRedirect("admin.jsp");
				
			}else {
				
				//redirect to a differnt page(view)
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("user.jsp");
				
				requestDispatcher.forward(request, response);
				

			}
			
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		
		
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
