package model;

public class Mbti{
	private int mbtiId;
	private String mbtiName;
	private String mbtiType;
	private String mbtiImage;
	private String character;
	private String job;
	
	public Mbti(int mbtiId, String mbtiName, String mbtiType, String mbtiImage, String character, String job) {
		this.mbtiId = mbtiId;
		this.mbtiName = mbtiName;
		this.mbtiType = mbtiType;
		this.mbtiImage = mbtiImage;
		this.character = character;
		this.job = job;
	}
	
	public int getMbtiId() {return mbtiId;}
		public String getMbtiName() {return mbtiName;}
		public String getMbtiType() {return mbtiType;}
		public String getMbtiImage() {return mbtiImage;}
		public String getCharacter() {return character;}
		public String getJob() {return job;}

}
