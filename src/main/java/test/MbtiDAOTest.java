package test;

import dao.MbtiDAO;
import model.Mbti;
import model.Select;

public class MbtiDAOTest{
	public static void main(String[] args) {
		testFindByLoginOK();
		testFindByLoginNG();
	}
	public static void testFindByLoginOK() {
		Select select = new Select(1);
		MbtiDAO dao = new MbtiDAO();
		Mbti result = dao.findByLogin(select);
		
		if (result != null &&
			result.getMbtiId() ==1 &&
			result.getMbtiName().equals("INTJ") &&
			result.getMbtiType().equals("建築家") &&
			result.getMbtiImage().equals("intj.jpg") &&
			result.getCharacter().equals("★リーダータイプ\\n★責任感が強い") &&
			result.getJob().equals("データ入力\\n集中する仕事")) {
			System.out.println("testFindLoginOK:成功しました");
		}else {
			System.out.println("testfindLoginOK:失敗しました");
	}

}
	public static void testFindByLoginNG() {
		Select select = new Select(10);
		MbtiDAO dao = new MbtiDAO();
		Mbti result = dao.findByLogin(select);
		if(result == null) {
			System.out.println("testFindLoginNG:成功しました");
		}else {
			System.out.println("testfindLoginNG:失敗しました");
		}
	}
}
