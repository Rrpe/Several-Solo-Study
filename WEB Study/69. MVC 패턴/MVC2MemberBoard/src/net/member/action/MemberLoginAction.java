package net.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import net.member.db.MemberDAO;

public class MemberLoginAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HttpSession session = request.getSession();
		ActionForward forward = new ActionForward();

		String MEMBER_ID = request.getParameter("uid");
		String MEMBER_PW = request.getParameter("upw");

		MemberDAO DAO = new MemberDAO();
		if (DAO.login(MEMBER_ID, MEMBER_PW) == true) {
			forward.setRedirect(false);
			forward.setPath("BoardList.bo");
			session.setAttribute("login", MEMBER_ID);
			
			return forward;
		} else {
			forward.setRedirect(true);
			forward.setPath("./member/LoginForm.jsp");

			return forward;
		}
	}

}
