package test;

import model.Select;
import model.SelectLogic;

public class SelectLogicTest {
	public static void main(String[] args){
		testExecuteOK();
		testExecuteNG();
	}
	public static void testExecuteOK() {
		Select select = new Select(1);
		SelectLogic bo = new SelectLogic();
		boolean result = bo.execute(select);
		if(result) {
			System.out.println("testExecuteOK:成功しました");
		}else {
			System.out.println("testExecuteOK:失敗しました");
		}
	}
	public static void testExecuteNG() {
		Select select = new Select(2);
		SelectLogic bo = new SelectLogic();
		boolean result = bo.execute(select);
		if(!result) {
			System.out.println("testExecuteNG:成功しました");
		}else {
			System.out.println("testExecuteNG:失敗しました");
		}
	}

}
