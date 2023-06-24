package song;

import se.michaelthelin.spotify.model_objects.specification.Image;

public class songDTO {
	private int snum;
	private String stitle;
	private String sname;
	private String artist;
	private Integer Duration;
	private Image sphoto;

	public int getSnum() {
		return snum;
	}
	public void setSnum(int snum) {
		this.snum = snum;
	}
	public String getStitle() {
		return stitle;
	}
	public void setStitle(String stitle) {
		this.stitle = stitle;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public Integer getDuration() {
		return Duration;
	}
	public void setDuration(Integer Duration) {
		this.Duration = Duration;
	}
	public Image getPhoto() {
		return sphoto;
	}
	public void setPhoto(Image sphoto) {
		this.sphoto = sphoto;
	}
	public songDTO() {
		super();
	}
	public String getArtist() {
		return artist;
	}
	public void setArtist(String artist) {
		this.artist = artist;
	}



}