package Metier.entities;


public class DataRedundancySupport {
 private String PREMIUM;
 private String HOT;
 private String COOL;
 private String ARCHIVE;


 public DataRedundancySupport() {
	 super();
	}
	
	public DataRedundancySupport(String PREMIUM, String HOT, String COOL, String ARCHIVE) {
		super();
		this.PREMIUM = PREMIUM;
		this.HOT = HOT;
		this.COOL = COOL;	
		this.ARCHIVE = ARCHIVE;		
	}

	public String getPREMIUM() {
		return PREMIUM;
	}

	public void setPREMIUM(String pREMIUM) {
		PREMIUM = pREMIUM;
	}

	public String getHOT() {
		return HOT;
	}

	public void setHOT(String hOT) {
		HOT = hOT;
	}

	public String getCOOL() {
		return COOL;
	}

	public void setCOOL(String cOOL) {
		COOL = cOOL;
	}

	public String getARCHIVE() {
		return ARCHIVE;
	}

	public void setARCHIVE(String aRCHIVE) {
		ARCHIVE = aRCHIVE;
	}



	
}

