package servlet;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import bean.User;
import dao.SayDao;

public class load extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public load() {
		super();
	}
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setHeader("Content-type", "text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		SayDao sayDao = new SayDao();
		User u = new User();
		String username = (String) request.getParameter("username");
		String password = (String) request.getParameter("password");
		u.setUsername(username);
		u.setPassword(password);
		u = sayDao.login(u);
		System.out.print("111:");
		System.out.println(u);
		if (u != null) {
			// session(会话)理解为会员卡getsession（）getsession（true）
			// 服务器检查有没有会员卡有不发，getsession（false）没有就发一张
			HttpSession session = request.getSession();
			// 会员卡中记录信息
			session.setAttribute("linkname", u);
			session.setAttribute("inf", "y");
			session.setAttribute("name", u.getUsername());
			request.getRequestDispatcher("say1.jsp").forward(request, response);
		} else {
			// 5555555555555555 
			out.println("<script>alert('用户名或密码错误!');"
					+ "response.setHeader('refresh', '3;url=say1.jsp');</script>");
			response.setHeader("refresh", "0;url=say1.jsp");
			// 关闭缓冲流
			out.flush();
			// 关闭所有的流
			out.close();
		}
	}
}
/*
 * if (u == null) {
 * 
 * session.setAttribute("inf", "n");
 * 
 * request.getRequestDispatcher("say1.jsp").forward(request, response); }
 * session.setAttribute("inf", "y"); session.setAttribute("name",
 * u.getUserName()); request.getRequestDispatcher("say1.jsp").forward(request,
 * response); }
 * 
 * }
 */