package net.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.member.db.MemberDAO;

public class MemberJoinAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		ActionForward forward = new ActionForward();
		
		String MEMBER_ID = request.getParameter("ide");
		String MEMBER_PW = request.getParameter("pass");
		String MEMBER_EMAIL = request.getParameter("mail");
		String MEMBER_NAME = request.getParameter("name");
		String MEMBER_JUMIN = request.getParameter("peoplenum1") + "-" + request.getParameter("peoplenum2");
		String MEMBER_ADRESS = request.getParameter("sample4_postcode1") + 
		"-" + request.getParameter("sample4_postcode2") + 
		"-" +  request.getParameter("sample4_postcode3") + 
		"-" +  request.getParameter("sample4_postcode4");
		String MEMBER_MYM = request.getParameter("intro");
		
		MemberDAO DAO = new MemberDAO();
		DAO.join(MEMBER_ID, MEMBER_PW, MEMBER_EMAIL, MEMBER_NAME, MEMBER_JUMIN, MEMBER_ADRESS, MEMBER_MYM);
	

		forward.setRedirect(false);
		forward.setPath("./member/JoinForm.jsp");
		
		return forward;
	}

}
