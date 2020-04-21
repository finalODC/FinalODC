package com.ohdogcat.odc.board.model.vo;

public class BoardSearch {
	private String boardWriter;
	
	private String boardtitle;
	
	
	public BoardSearch() {
		super();
		// TODO Auto-generated constructor stub
	}


	public BoardSearch(String boardWriter, String boardtitle) {
		super();
		this.boardWriter = boardWriter;
		
		this.boardtitle = boardtitle;
	}


	public String getBoardWriter() {
		return boardWriter;
	}


	public void setBoardWriter(String boardWriter) {
		this.boardWriter = boardWriter;
	}


	

	public String getBoardtitle() {
		return boardtitle;
	}


	public void setBoardtitle(String boardtitle) {
		this.boardtitle = boardtitle;
	}


	@Override
	public String toString() {
		return "BoardSearch [boardWriter=" + boardWriter  +", boardtitle="
				+ boardtitle + "]";
	}
	
	
	
	
}
