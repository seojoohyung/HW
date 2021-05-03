package kr.or.ddit.membership.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.membership.vo.MembershipVO;

public class MembershipDao implements IMembershipDao{
	private static IMembershipDao membershipDao;
	
	private MembershipDao() {
		
	}
	
	public static IMembershipDao getInstance() {
		if(membershipDao == null) {
			membershipDao = new MembershipDao();
		}
		
		return membershipDao;
	}

	@Override
	public List<MembershipVO> selectMembershipPathList(SqlMapClient smc, MembershipVO ov) throws SQLException {
		List<MembershipVO> membershipPathList = smc.queryForList("membership.selectMembershipPathList", ov);
		
		return membershipPathList;
	}
	
		
	
}

	