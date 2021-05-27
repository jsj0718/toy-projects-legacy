package user;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// Servlet 구현 (DB와 통신)
@WebServlet("/UserSearchServlet")
public class UserSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String userID = request.getParameter("userID");
		response.getWriter().write(getJSON(userID));
	}
	
	// JSON 결과를 얻어내는 컨트롤러 생성
	public String getJSON(String userID) {
		if (userID == null) {
			userID = "";
		}
		StringBuffer result = new StringBuffer("");
		result.append("{\"result\":[");
		UserDAO userDAO = new UserDAO();
		ArrayList<User> list = userDAO.search(userID);
		for (int i=0; i<list.size(); i++) {
			result.append("[{\"value\": \"" + list.get(i).getUserID() + "\"},");
			result.append("{\"value\": \"" + list.get(i).getUserAge() + "\"},");
			result.append("{\"value\": \"" + list.get(i).getUserGender() + "\"},");
			result.append("{\"value\": \"" + list.get(i).getUserEmail() + "\"}],");
		}
		result.append("]}");
		return result.toString();
	}

}
