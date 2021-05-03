package kr.or.ddit.membership.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import kr.or.ddit.membership.vo.MembershipVO;

public interface IMembershipDao {
	public List<MembershipVO> selectMembershipPathList(SqlMapClient smc, MembershipVO ov) throws SQLException;
	
}
