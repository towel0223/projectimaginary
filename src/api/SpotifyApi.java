package api;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/SpotifyApi.do")
public class SpotifyApi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SpotifyApi() {
        super();
        // TODO Auto-generated constructor stub
    }
    @Override
    protected void service(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {
    	 final String clientId = "69246c259e504954b27d1f94ed96bc70";
    	    final String clientSecret = "47ca95bdaa62425fa05e0b5169bcfc10";
    	     final String redirectUri = "http://localhost:8080";
    	    
    	    final SpotifyApi spotifyApi = new SpotifyApi.Builder()
    	            .setClientId(clientId)
    	            .setClientSecret(clientSecret)
    	            .setRedirectUri(SpotifyHttpManager.makeUri(redirectUri))
    	            .build();
    	
    	
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	
	}

}
