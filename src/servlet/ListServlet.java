package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Say;

import dao.SayDao;

public class ListServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		
		SayDao sd=new SayDao();
		List<Say> alist =sd.findAll();
		for(Object obj : alist){
            
            Say s = (Say)obj;
            System.out.println(s);
		}
		
		request.setAttribute("sayList", alist);
		request.getRequestDispatcher("say.jsp").forward(request, response);
		
	}
	

	
}
