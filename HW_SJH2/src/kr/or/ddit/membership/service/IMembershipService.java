package kr.or.ddit.membership.service;

import java.util.List;

import kr.or.ddit.membership.vo.MembershipVO;

public interface IMembershipService {
	public List<MembershipVO> selectMembershipPathList(MembershipVO ov);
	
	
}
