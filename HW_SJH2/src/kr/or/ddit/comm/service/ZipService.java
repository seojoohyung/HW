package kr.or.ddit.comm.service;

import java.sql.SQLException;
import java.util.List;

import kr.or.ddit.comm.dao.ZipDao;
import kr.or.ddit.common.vo.ZipVO;

public class ZipService {
	private ZipDao dao;
	
	public ZipService() {
		if(dao == null)
			dao = new ZipDao();
	}
	
	public List<ZipVO> retrieveSidoList() throws SQLException {
		return dao.retrieveSidoList();
		
	}
	
	public List<ZipVO> retrieveGugunList(ZipVO zipVo) throws SQLException {
		return dao.retrieveGugunList(zipVo);
		
	}
	
	public List<ZipVO> retrieveDongList(ZipVO zipVo) throws SQLException {
		return dao.retrieveDongList(zipVo);
		
	}

	public List<ZipVO> retrieveZipList(ZipVO zipVo) throws SQLException {
	return dao.retrieveZipList(zipVo);
	
	}
	
	public List<ZipVO> retrieveDongList2(ZipVO zipVo) throws SQLException {
		return dao.retrieveDongList2(zipVo);
		
	}

	
}
