package song;

import java.awt.image.BufferedImage;

import javax.imageio.ImageIO;

import se.michaelthelin.spotify.model_objects.specification.Image;

public class songDTO {
	private int snum;
	private String stitle;
	private String sname;
	private String artist;
	private String sphoto;
	private String url;

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
	
	public String getPhoto() {
		return sphoto;
	}
	public void setPhoto(String sphoto) {
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
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}



}