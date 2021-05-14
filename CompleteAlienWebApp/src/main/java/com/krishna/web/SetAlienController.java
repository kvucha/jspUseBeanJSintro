package com.krishna.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.krishna.web.dao.AlienDao;
import com.krishna.web.model.Alien;
public class SetAlienController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public SetAlienController() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int aid      = Integer.parseInt(request.getParameter("aid"));
		String aname = request.getParameter("aname");
		String atech = request.getParameter("atech");
		Alien a = new Alien();
		a.setAid(aid);
		a.setAname(aname);
		a.setTech(atech);
		
		AlienDao dao = new AlienDao();
		dao.setAlien(a);
		
		
		
		
	}

}
