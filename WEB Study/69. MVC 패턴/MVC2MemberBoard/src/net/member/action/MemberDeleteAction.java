package net.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.member.db.*;
import net.member.action.ActionForward;

public class MemberDeleteAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ActionForward forward = new ActionForward();
		MemberDAO dao = new MemberDAO();
		
		String MEMBER_ID = request.getParameter("uid");
		
		dao.delete(MEMBER_ID);
		
		forward.setRedirect(false);
   		forward.setPath("MemberListAction.mo");
		
		return forward;
	}


}
