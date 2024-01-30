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
	public MemberDTO idCheck(String mem_id) throws Exception {
		return sqlSession.selectOne("member.idCheck", mem_id);
	
	}

	@Override
	public Map<String, Object> login(String mem_id) {
		return sqlSession.selectOne("member.login", mem_id);
	}

	
	
	
}
