package model;

import dao.MbtiDAO;

public class SelectLogic {
	public Mbti execute(Select select) {
		MbtiDAO dao = new MbtiDAO();
		return dao.findByLogin(select);
		
	}
}