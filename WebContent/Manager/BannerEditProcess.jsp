<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="java.io.File" %>
<%@ page import="banner.bannerDTO" %>
<%@ page import="banner.bannerDAO" %>
<%@ page import="javax.servlet.ServletContext" %>
<%	
String saveDirectory=application.getRealPath("/images");
int maxPostSize=2048*1000;
String encoding="UTF-8";

try{
	MultipartRequest mr =new MultipartRequest(request,saveDirectory,maxPostSize,encoding);
	String url=mr.getParameter("url");
	Integer num=Integer.parseInt(mr.getParameter("myOption"));
	
	String fileName=mr.getFilesystemName("bannerImage");
	String ext=fileName.substring(fileName.lastIndexOf("."));
	String newFileName="행사 배너"+num+ext;
	File existingFile = new File(saveDirectory+File.separator+newFileName);

	if (existingFile.exists()) {
	    boolean deleted = existingFile.delete();
	}
	

	
	File oldFile=new File(saveDirectory+File.separator+fileName);
	File newFile=new File(saveDirectory+File.separator+newFileName);
	


	oldFile.renameTo(newFile);
	
	bannerDTO dto=new bannerDTO();
	dto.setUrl(url);
	dto.setNum(num);
	dto.setFname(newFileName);
	bannerDAO dao=new bannerDAO();
	if(dao.SelectBanner(dto)==null)
	{
		dao.InsertBanner(dto);
		
	}
	else{
		int count=dao.UpdateBanner(dto);
		System.out.print(count);
	}
	response.sendRedirect("../Main/Main.jsp");
	



}catch(Exception e){
	e.printStackTrace();
	request.getRequestDispatcher("BannerEdit.jsp").forward(request,response);
	
}


%>