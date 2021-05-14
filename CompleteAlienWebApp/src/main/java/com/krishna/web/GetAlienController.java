package com.krishna.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.krishna.web.dao.AlienDao;
import com.krishna.web.model.Alien;

public class GetAlienController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public GetAlienController() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int aid = Integer.parseInt(request.getParameter("aid"));
		
		AlienDao dao = new AlienDao();
		Alien a1 = dao.getAlien(aid);
		/*
		 * How do you call a JSP
		 *   > RequestDispatcher
		 *   	if you use dispatcher , client will not know what is happening 
		 *      behind the screen
		 *   > sendRedirect
		 *   
		 */
		//throuh request object, we are asking please carry the object
		// 
		request.setAttribute("alien", a1);
		RequestDispatcher rd = request.getRequestDispatcher("showAlien.jsp");
		rd.forward(request, response);
		
		
	}



}
