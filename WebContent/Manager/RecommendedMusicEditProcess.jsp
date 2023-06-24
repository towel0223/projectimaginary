<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="java.io.File" %>
<%@ page import="song.songDTO" %>
<%@ page import="song.songDAO" %>
<%@ page import="javax.servlet.ServletContext" %>
<%	
String saveDirectory=application.getRealPath("/images");
int maxPostSize=2048*1000;
String encoding="UTF-8";

try{
	MultipartRequest mr =new MultipartRequest(request,saveDirectory,maxPostSize,encoding);
	String url=mr.getParameter("url");
	String artist=mr.getParameter("artist");
	String musicName=mr.getParameter("musicName");
	
	Integer num=Integer.parseInt(mr.getParameter("myOption"));
	
	String fileName=mr.getFilesystemName("MusicImage");
	String ext=fileName.substring(fileName.lastIndexOf("."));
	String newFileName="yoshiRecommandMusic"+num+ext;
	File existingFile = new File(saveDirectory+File.separator+newFileName);

	if (existingFile.exists()) {
	    boolean deleted = existingFile.delete();
	}
	

	
	File oldFile=new File(saveDirectory+File.separator+fileName);
	File newFile=new File(saveDirectory+File.separator+newFileName);
	


	oldFile.renameTo(newFile);
	
	songDTO dto=new songDTO();
	dto.setUrl(url);
	dto.setArtist(artist);
	dto.setSnum(num);
	dto.setPhoto(newFileName);
	dto.setSname(musicName);
	songDAO dao=new songDAO();
	if(dao.SelectSong(dto)==null)
	{
		dao.InsertSong(dto);
		
	}
	else{
		int count=dao.UpdateSong(dto);
		System.out.print(count);
	}
	response.sendRedirect("../Main/Main.jsp");
	



}catch(Exception e){
	e.printStackTrace();
	request.getRequestDispatcher("RecommendedMusicEdit.jsp").forward(request,response);
	
}


%>