package servlet;



import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Say;
import dao.SayDao;

public class AddSayServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		    doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
	
		String content = request.getParameter("content");
	HttpSession session=request.getSession();
	String name = (String) session.getAttribute("name");

	
		Date date=new Date();
		DateFormat format=new SimpleDateFormat("yyyy-MM-dd");
		String time=format.format(date);

		
		Say s = new Say();
		s.setSay_content(content);
		s.setSay_time(time);
		s.setSay_username(name);
		SayDao dao = new SayDao();
	boolean flag = dao.save(s);
		if (flag){
			out.println("<script>alert('�����ɹ�!')</script>");
		    out.println("插入成功");}
		else
			out.println("<script>alert('����ʧ��!')</script>");
		//response.setHeader("refresh", "0;url=list.do");
	
	/*	out.println("ok");
		out.println("name" + name);
		out.println("content" + content);
	
		out.println("time"+time);
		out.println("s"+s);
		out.println("allsay"+dao.findAll());
		
		out.flush();
		out.close();*/
		List<Say> aList=new ArrayList<Say>();
		aList=dao.findAll();
		
		request.setAttribute("sayList", aList);
		request.getRequestDispatcher("/say1.jsp").forward(request, response);
		

	}



}
