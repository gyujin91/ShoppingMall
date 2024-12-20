package com.shopping.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shopping.dao.NoticeDAO;
import com.shopping.dto.NoticeDTO;

@Service
public class NoticeServiceImpl implements NoticeService{

	@Autowired
	NoticeDAO noticeDao;
	
	@Override
	public List<NoticeDTO> noticeList() throws Exception {
		return noticeDao.noticeList();
	}

	@Override
	public void insertNotice(NoticeDTO dto) throws Exception {
		noticeDao.insertNotice(dto);
	}

	@Override
	public int nextNum() throws Exception {
		return noticeDao.nextNum();
	}

	@Override
	public NoticeDTO noticeRead(int num) throws Exception {
		return noticeDao.noticeRead(num);
	}

	@Override
	public int increaseViewCount(int num) throws Exception {
		return noticeDao.increaseViewCount(num);
	}

	@Override
	public void updateNotice(NoticeDTO dto) throws Exception {
		noticeDao.updateNotice(dto);
	}

	@Override
	public void deleteNotice(NoticeDTO dto) throws Exception {
		noticeDao.deleteNotice(dto);
	}

	@Override
	public int noticeTotalCnt() throws Exception {
		return noticeDao.noticeTotalCnt();
	}
	
	
}
