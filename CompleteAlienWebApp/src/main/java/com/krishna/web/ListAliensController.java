package com.krishna.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.krishna.web.dao.AlienDao;
import com.krishna.web.model.Alien;


@WebServlet("/listAliens")
public class ListAliensController extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		AlienDao dao = new AlienDao();
		List<Alien> aList = dao.getAlienList();

		request.setAttribute("arr", aList);
		RequestDispatcher rd = request.getRequestDispatcher("listAliens.jsp");
		rd.forward(request, response);
		
		
	}


}
