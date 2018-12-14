package net.member.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.member.db.MemberBean;
import net.member.db.MemberDAO;

public class MemberListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ActionForward forward = new ActionForward();

		MemberDAO dao = new MemberDAO();
		
		ArrayList<MemberBean> dtos = dao.list();
	    request.setAttribute("list", dtos);
	      
	    forward.setRedirect(false);
	    forward.setPath("./member/Member_list.jsp");
		
		return forward;
	}

}
