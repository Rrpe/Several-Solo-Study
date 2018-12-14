package net.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import net.member.db.MemberDAO;

public class MemberSignin implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HttpSession session = request.getSession();
		ActionForward forward = new ActionForward();

		String id = request.getParameter("uid");
		String pass = request.getParameter("upw");

		MemberDAO DAO = new MemberDAO();
		if (DAO.signin(id, pass) == true) {
			forward.setRedirect(false);
			forward.setPath("./member/Main.jsp");
			session.setAttribute("login", id);
			
			return forward;
		} else {
			forward.setRedirect(true);
			forward.setPath("./member/SignIn.jsp");

			return forward;
		}
	}

}
