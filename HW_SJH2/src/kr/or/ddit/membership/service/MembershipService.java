package kr.or.ddit.membership.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.util.SqlMapClientUtil;
import kr.or.ddit.membership.dao.IMembershipDao;
import kr.or.ddit.membership.dao.MembershipDao;
import kr.or.ddit.membership.vo.MembershipVO;



public class MembershipService implements IMembershipService {

	private IMembershipDao membershipDao;
	private SqlMapClient smc;
	
	private static IMembershipService membershipService;
	
	public MembershipService() {
		
		membershipDao = MembershipDao.getInstance();
		smc = SqlMapClientUtil.getInstance();
	}
	
	public static IMembershipService getInstance() {
		if(membershipService == null) {
			membershipService = new MembershipService();
		}
		return membershipService;
	}
	@Override
	public List<MembershipVO> selectMembershipPathList(MembershipVO ov) {
		List<MembershipVO> membershipList = new ArrayList<>();
		
		try {
			membershipList = membershipDao.selectMembershipPathList(smc, ov);
		}catch(SQLException ex) {
			ex.printStackTrace();
		}
		return membershipList;
	}
	
	
}
