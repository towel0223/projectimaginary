package api;

	
	import java.io.BufferedReader;
	import java.io.IOException;
	import java.io.InputStreamReader;
	import java.net.HttpURLConnection;
	import java.net.URL;
	import java.nio.charset.StandardCharsets;

	public class spotifyapi {
		 public String getToken() {
	        String clientId = "69246c259e504954b27d1f94ed96bc70";
	        String clientSecret = "47ca95bdaa62425fa05e0b5169bcfc10";
	        
	        try {
	            // Create URL object
	            URL url = new URL("https://accounts.spotify.com/api/token");
	            
	            // Create connection
	            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
	            connection.setRequestMethod("POST");
	            connection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
	            connection.setDoOutput(true);
	            
	            // Build request body
	            String requestBody = "grant_type=client_credentials&client_id=" + clientId + "&client_secret=" + clientSecret;
	            
	            // Send request
	            connection.getOutputStream().write(requestBody.getBytes(StandardCharsets.UTF_8));
	            
	            // Read response
	            BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
	            StringBuilder response = new StringBuilder();
	            String line;
	            while ((line = reader.readLine()) != null) {
	                response.append(line);
	            }
	            reader.close();
	            
	            // Print response
	            String token= response.toString();
	            
	            // Close connection
	            connection.disconnect();
	            
	            return token;
	        } catch (IOException e) {
	            e.printStackTrace();
	        }
				return null;
	    }
		 public String getAlbum(String token) {
			 
		      
		        
		        try {
		            // Create URL object
		            URL url = new URL("https://api.spotify.com/v1/albums?ids=382ObEPsp2rxGrnsizN5TX%2C1A2GTWGtFfWp7KSQTwWOyo%2C2noRn2Aes5aoNVsU6iWThc&market=KR");
		            
		            // Create connection
		            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
		            connection.setRequestMethod("GET");
		            connection.setRequestProperty("Authorization", "Bearer " +token);
		            
		            // Send request
		            int responseCode = connection.getResponseCode();
		            
		            // Read response
		            BufferedReader reader;
		            if (responseCode == HttpURLConnection.HTTP_OK) {
		                reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
		            } else { 
		                reader = new BufferedReader(new InputStreamReader(connection.getErrorStream()));
		            }
		            
		            StringBuilder response = new StringBuilder();
		            String line;
		            while ((line = reader.readLine()) != null) {
		                response.append(line);
		            }
		            reader.close();
		            
		            // Print response
		            String album=response.toString();
		            
		            
		            // Close connection
		            connection.disconnect();
		            return album;
		        } catch (IOException e) {
		            e.printStackTrace();
		        }
		        return null;
		    }
			 
		 }
	



