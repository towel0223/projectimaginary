package utils;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

public class CookieManager {

	public static void makeCookie(String cName,String cValue,int cTime,HttpServletResponse response)
	{
		Cookie cookie=new Cookie(cName,cValue);
		cookie.setPath("/");
		cookie.setMaxAge(cTime);
		response.addCookie(cookie);
	}
	public static String readCookie(String cName,HttpServletRequest request)
	{
		String cookieValue="";
		Cookie[] cookies=request.getCookies();
		for(Cookie co: cookies)
		{String cookieName=co.getName();
		if(cookieName.equals(cName))
		{
			cookieValue=co.getValue();
		}

		}
		return cookieValue;
	}
	public static void deleteCookie(String cName,HttpServletResponse response)
	{
		makeCookie(cName,"/",0,response);
	}

}
