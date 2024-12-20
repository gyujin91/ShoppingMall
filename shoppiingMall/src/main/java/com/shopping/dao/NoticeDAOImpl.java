package com.shopping.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shopping.dto.NoticeDTO;

@Repository
public class NoticeDAOImpl implements NoticeDAO {

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<NoticeDTO> noticeList() throws Exception {
		return sqlSession.selectList("notice.noticeList");
	}

	@Override
	public void insertNotice(NoticeDTO dto) throws Exception {
		sqlSession.insert("notice.insertNotice", dto);
	}

	@Override
	public int nextNum() throws Exception {
		return sqlSession.selectOne("notice.nextNum");
	}

	@Override
	public NoticeDTO noticeRead(int num) throws Exception {
		return sqlSession.selectOne("notice.noticeRead", num);
	}

	@Override
	public int increaseViewCount(int num) throws Exception {
		return sqlSession.update("notice.increaseViewCount", num);
	}

	@Override
	public void updateNotice(NoticeDTO dto) throws Exception {
		sqlSession.update("notice.updateNotice", dto);
	}

	@Override
	public void deleteNotice(NoticeDTO dto) throws Exception {
		sqlSession.update("notice.deleteNotice", dto);
	}

	@Override
	public int noticeTotalCnt() throws Exception {
		return sqlSession.selectOne("notice.noticeTotalCnt");
	}
	
	
}
