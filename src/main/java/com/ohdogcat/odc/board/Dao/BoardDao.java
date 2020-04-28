package com.ohdogcat.odc.board.Dao;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ohdogcat.odc.board.model.vo.FreeBoard;
import com.ohdogcat.odc.board.model.vo.FreeReply;
import com.ohdogcat.odc.board.model.vo.PageInfo;
import com.ohdogcat.odc.board.model.vo.TipBoard;
import com.ohdogcat.odc.board.model.vo.TipReply;

@Repository("bDao")
public class BoardDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	

	public int FreeListCount(Map<String, String> map) {
		
		return sqlSession.selectOne("boardMapper.FreeListCount",map);
	}
	
	

	public ArrayList<FreeBoard> selectFreeList(Map<String,String> map, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		System.out.println(map);
		return (ArrayList)sqlSession.selectList("boardMapper.selectFreeList",map,rowBounds);
	}



	public int FreeBoardInsert(FreeBoard fb) {

		return sqlSession.insert("boardMapper.FreeBoardInsert",fb);
	}



	public FreeBoard selectFreeBoard(int fbId) {

		return sqlSession.selectOne("boardMapper.selectFreeBoard",fbId);
	}



	public int updateCount(int fbId) {
		
		return sqlSession.update("boardMapper.updateCount",fbId);
	}



	public int insertFreeReply(FreeReply fr) {
		System.out.println(fr);
		
		return sqlSession.insert("boardMapper.insertFreeReply",fr);
	}



	public ArrayList<FreeReply> selectFreeReplyList(int fbId) {
		
		return (ArrayList)sqlSession.selectList("boardMapper.selectFreeReplyList",fbId);
	}



	


	public FreeBoard FreeBoardUpdateView(int fbId) {
		
		
		return sqlSession.selectOne("boardMapper.FreeBoardUpdateView",fbId);
	}
	
	
	public int FreeBoardDelete(int fbId) {

		return sqlSession.update("boardMapper.FreeBoardDelete",fbId);
	}
	
	public int FreeBoardUpdate(FreeBoard fb) {
		
		return sqlSession.update("boardMapper.FreeBoardUpdate",fb);
	}
	
	
	public int FreeBoardSearchCount(int fbId) {
		
		return sqlSession.selectOne("boardMapper.FreeBoardSearchCount",fbId);
	}


	//------------------------------------- 여기서 부터 dogBoard 페이지-------------------------------------

	public int DogBoardListCount(Map<String, String> Dmap) {
		
		return sqlSession.selectOne("TipboardMapper.DogBoardListCount",Dmap);
	}



	public ArrayList<TipBoard> DogBoardList(Map<String, String> Dmap, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		RowBounds rowBounds =new RowBounds(offset,pi.getBoardLimit());
		System.out.println(Dmap);
		
		return (ArrayList)sqlSession.selectList("TipboardMapper.DogBoardList",Dmap,rowBounds);
	}



	public int DogBoardWriter(TipBoard tb) {
		
		return sqlSession.insert("TipboardMapper.DogBoardWriter",tb);
	}



	public TipBoard DogBoardView(int tbId) {

		return sqlSession.selectOne("TipboardMapper.DogBoardView",tbId);
	}



	public int DogBoardViewCount(int tbId) {

		return sqlSession.update("TipboardMapper.DogBoardViewCount",tbId);
	}


	//댓글 쓰기
	public int DogBoardReply(TipReply tr) {

		return sqlSession.insert("TipboardMapper.DogBoardReply",tr);
	}



	public ArrayList<TipReply> DogBoardReplyList(int tbId) {
		System.out.println(tbId);
		
		ArrayList list = (ArrayList)sqlSession.selectList("TipboardMapper.DogBoardReplyList",tbId);
		System.out.println("dao" + list);
		return (ArrayList)sqlSession.selectList("TipboardMapper.DogBoardReplyList",tbId);
	}



	public TipBoard DogBoardUpdateView(int tbId) {

		return sqlSession.selectOne("TipboardMapper.DogBoardUpdateView",tbId);
	}



	public int DogBoardUpdate(TipBoard tb) {

		return sqlSession.update("TipboardMapper.DogBoardUpdate",tb);
	}


	//삭제
	public int DogBoardDelete(int tbId) {
		
		return sqlSession.update("TipboardMapper.DogBoardDelete",tbId);
	}

	



	//댓글 리스트 불러오기
	
	
	




//////////////////@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@////////////////////////////////////////
	
	
	public int CatBoardListCount(Map<String, String> Cmap) {
		
		return sqlSession.selectOne("TipboardMapper.CatBoardListCount",Cmap);
	}



	public ArrayList<TipBoard> CatBoardList(Map<String, String> Cmap, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		RowBounds rowBounds =new RowBounds(offset,pi.getBoardLimit());
		System.out.println("Cmap : "+ Cmap);
		
		return (ArrayList)sqlSession.selectList("TipboardMapper.CatBoardList",Cmap,rowBounds);
	}


	//게시판 작성
	public int CatBoardWriter(TipBoard tb) {
		
		return sqlSession.insert("TipboardMapper.CatBoardWriter",tb);
	}



	public TipBoard CatBoardView(int tbId) {

		return sqlSession.selectOne("TipboardMapper.CatBoardView",tbId);
	}



	public TipBoard CatBoardUpdateView(int tbId) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("TipboardMapper.CatBoardUpdateView",tbId);
	}



	public int CatBoardUpdate(TipBoard tb) {

		return sqlSession.update("TipboardMapper.CatBoardUpdate",tb);
	}



	public int CatBoardDelete(int tbId) {

		return sqlSession.update("TipboardMapper.CatBoardDelete",tbId);
	}



	public int CatBoardReply(TipReply tb) {

		return sqlSession.insert("TipboardMapper.CatBoardReply",tb);
	}



	public ArrayList<TipReply> CatBoardReplyList(int tbId) {

		return (ArrayList)sqlSession.selectList("TipboardMapper.CatBoardReplyList",tbId);
	}



	public int CatBoardComplain(TipBoard tip) {
		
		
		return sqlSession.update("TipboardMapper.CatBoardComplain",tip);
	}



	public int FreeBoardComplain(FreeBoard fb) {

		return sqlSession.update("boardMapper.FreeBoardComplain",fb);
	}



	
	
	
}
