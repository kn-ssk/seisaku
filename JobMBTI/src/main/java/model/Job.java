package model;

public class Job {
	private int mbtiId;
    private String mbtiName;
    private String mbtiType;
    private String mbtiImage;
    private String characteristics;
    private String job;
    
    public Job(int mbtiId, String mbtiName, String mbtiType, String mbtiImage, String characteristics, String job) {
        this.mbtiId = mbtiId;
        this.mbtiName = mbtiName;
        this.mbtiType = mbtiType;
        this.mbtiImage = mbtiImage;
        this.characteristics = characteristics;
        this.job = job;
    }
    
    public int getMbtiId() {
        return mbtiId;
    }

    public void setMbtiId(int mbtiId) {
        this.mbtiId = mbtiId;
    }

    public String getMbtiName() {
        return mbtiName;
    }

    public void setMbtiName(String mbtiName) {
        this.mbtiName = mbtiName;
    }

    public String getMbtiType() {
        return mbtiType;
    }

    public void setMbtiType(String mbtiType) {
        this.mbtiType = mbtiType;
    }

    public String getMbtiImage() {
        return mbtiImage;
    }

    public void setMbtiImage(String mbtiImage) {
        this.mbtiImage = mbtiImage;
    }

    public String getCharacteristics() {
        return characteristics;
    }

    public void setCharacteristics(String characteristics) {
        this.characteristics = characteristics;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }


}
