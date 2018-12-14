package net.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.member.db.MemberDAO;

public class MemberSignUp implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession();
		ActionForward forward = new ActionForward();
		
		String id = request.getParameter("ide");
		String pass = request.getParameter("pass");
		String mail = request.getParameter("mail");
		String name = request.getParameter("name");
		String jumin = request.getParameter("peoplenum1") + "-" + request.getParameter("peoplenum2");
		String adress = request.getParameter("sample4_postcode1") + 
		"-" + request.getParameter("sample4_postcode2") + 
		"-" +  request.getParameter("sample4_postcode3") + 
		"-" +  request.getParameter("sample4_postcode4");
		String mym = request.getParameter("intro");
		
		MemberDAO DAO = new MemberDAO();
		DAO.signup(id, pass, mail, name, jumin, adress, mym);
	

		forward.setRedirect(false);
		forward.setPath("./member/SignIn.jsp");
		
		return forward;
	}

}
