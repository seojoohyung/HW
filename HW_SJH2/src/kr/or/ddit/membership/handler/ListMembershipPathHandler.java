package kr.or.ddit.membership.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.comm.handler.CommandHandler;
import kr.or.ddit.membership.service.IMembershipService;
import kr.or.ddit.membership.service.MembershipService;
import kr.or.ddit.membership.vo.MembershipVO;

public class ListMembershipPathHandler implements CommandHandler {

	private static final String VIEW_PAGE = "/WEB-INF/view/membership/membershipmembership.jsp";

	@Override
	public boolean isRedirect(HttpServletRequest req) {
		return false;
	}

	@Override
	public String process(HttpServletRequest req, HttpServletResponse resp) throws Exception {

		String membershipCode =  "M1";
//				req.getParameter("membershipCode");
		String membershipNm =  "1달";
//		req.getParameter("membershipNm");
		String membershipDetail =  "10000";
//		req.getParameter("membershipDetail");

		IMembershipService membershipService = MembershipService.getInstance();

		MembershipVO ov = new MembershipVO();
		ov.setMembershipCode(membershipCode);
		ov.setMembershipNm(membershipNm);
		ov.setMembershipDetail(membershipDetail);

		List<MembershipVO> membershipList = membershipService.selectMembershipPathList(ov);

		req.setAttribute("membershipList", membershipList);

		String msg = "";

		if (membershipList.size() > 0) {
			msg = "성공";
		} else {
			msg = "실패";
		}

		return VIEW_PAGE;
	}

}
