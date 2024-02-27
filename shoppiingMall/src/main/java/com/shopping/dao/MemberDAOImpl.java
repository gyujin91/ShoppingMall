package com.shopping.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shopping.dto.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO{

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public void join(MemberDTO dto) throws Exception {
		sqlSession.insert("member.join", dto);
	}

	@Override
	public int idCheck(String mem_id) throws Exception {
		return sqlSession.selectOne("member.idCheck", mem_id);
	}

	@Override
	public Map<String, Object> login(String mem_id) {
		return sqlSession.selectOne("member.login", mem_id);
	}

	@Override
	public MemberDTO myPage(String mem_id) throws Exception {
		return sqlSession.selectOne("member.myPage", mem_id);
	}

	@Override
	public void memberUpdate(MemberDTO dto) throws Exception {
		sqlSession.update("member.memberUpdate", dto);
	}

	@Override
	public void ordermemberUpdate(MemberDTO memberDto) throws Exception {
		sqlSession.update("member.ordermemberUpdate", memberDto);
	}	
	
	@Override
	public void memberDelete(String mem_id) throws Exception {
		sqlSession.delete("member.memberDelete", mem_id);
	}
	
}
