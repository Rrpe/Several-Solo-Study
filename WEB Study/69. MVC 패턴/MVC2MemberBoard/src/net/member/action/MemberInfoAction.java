package net.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.member.action.ActionForward;
import net.member.db.MemberBean;
import net.member.db.MemberDAO;

public class MemberInfoAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String MEMBER_ID = request.getParameter("uid");
		ActionForward forward = new ActionForward();
		
		System.out.println("MemberInfoAction");
		MemberDAO dao = new MemberDAO();
		MemberBean dto = dao.infolist(MEMBER_ID);
		
		request.setAttribute("info_list", dto);
		
		forward.setRedirect(false);
   		forward.setPath("./member/Member_info.jsp");
   		
   		return forward;
	}

}
