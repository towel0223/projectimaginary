package spotify;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.apache.hc.core5.http.ParseException;
import com.neovisionaries.i18n.CountryCode;
import se.michaelthelin.spotify.SpotifyApi;
import se.michaelthelin.spotify.exceptions.SpotifyWebApiException;
import se.michaelthelin.spotify.model_objects.specification.Paging;
import se.michaelthelin.spotify.model_objects.specification.Track;
import se.michaelthelin.spotify.requests.data.search.simplified.SearchTracksRequest;
import song.songDTO;


public class spotifyapi {
	static createAccesstoken token=new createAccesstoken();
	private final static String accessToken=token.accesstoken();


	static SpotifyApi spotifyApi = new SpotifyApi.Builder().setAccessToken(accessToken).build();

<<<<<<< HEAD
             for (Track track : trackPaging.getItems()) {
            	 songDTO dto2=new songDTO();
            	 dto2.setSname(track.getName());
            	 dto2.setSnum(i++);
            	 dto2.setPhoto(track.getAlbum().getImages()[0].getUrl());
            	 dto2.setArtist(track.getArtists()[0].getName());
            	 dto.add(dto2);
             }
             return dto;
         } catch (ParseException |IOException | SpotifyWebApiException e) {
             e.printStackTrace();
         }
    	 return null;
     }
    
    public static List<songDTO> getsong(String search) {
    	 try {
    		 List<songDTO> dto=new ArrayList<songDTO>();
             // Get top tracks
    		 SearchTracksRequest  searchTracksRequest = spotifyApi.searchTracks(search).build();
=======
>>>>>>> 47c7cc18242a2fb1f900ed47d3c85dac627dd3be

	public static List<songDTO> getTrack_Sync() {
		int i=1;
		try {
			List<songDTO> dto=new ArrayList<songDTO>();
			// Get top tracks
			SearchTracksRequest  searchTracksRequest = spotifyApi.searchTracks("year:2023").limit(50).market(CountryCode.KR).build();

<<<<<<< HEAD
             for (Track track : trackPaging.getItems()) {
            	 songDTO dto2=new songDTO();
            	 dto2.setSname(track.getName());
            	 dto2.setPhoto(track.getAlbum().getImages()[0].getUrl());
            	 dto2.setArtist(track.getArtists()[0].getName());
            	 dto.add(dto2);
             }
             return dto;
         } catch (ParseException |IOException | SpotifyWebApiException e) {
             e.printStackTrace();
         }
    	 return null;
     }
    public static List<songDTO> getsong(String search,CountryCode country,int count) {
   	 try {
   		 List<songDTO> dto=new ArrayList<songDTO>();
            // Get top tracks
   		 SearchTracksRequest  searchTracksRequest = spotifyApi.searchTracks(search).limit(count).market(country).build();

            Paging<Track> trackPaging = searchTracksRequest.execute();

            for (Track track : trackPaging.getItems()) {
           	 songDTO dto2=new songDTO();
           	 dto2.setSname(track.getName());
           	 dto2.setPhoto(track.getAlbum().getImages()[0].getUrl());
           	 dto2.setArtist(track.getArtists()[0].getName());
           	 dto.add(dto2);
            }
            return dto;
        } catch (ParseException |IOException | SpotifyWebApiException e) {
            e.printStackTrace();
        }
   	 return null;
    }
    public static List<songDTO> getTodaySong() {
   	 try {
   		 List<songDTO> dto=new ArrayList<songDTO>();
    
=======
			Paging<Track> trackPaging = searchTracksRequest.execute();

			for (Track track : trackPaging.getItems()) {
				songDTO dto2=new songDTO();
				dto2.setSname(track.getName());
				dto2.setSnum(i++);
				dto2.setPhoto(track.getAlbum().getImages()[0].getUrl());
				dto2.setArtist(track.getArtists()[0].getName());
				dto.add(dto2);
			}
			return dto;
		} catch (ParseException |IOException | SpotifyWebApiException e) {
			e.printStackTrace();
		}
		return null;
	}

	public static List<songDTO> getsong(String search,CountryCode country,int count) {
		try {
			List<songDTO> dto=new ArrayList<songDTO>();
			// Get top tracks
			SearchTracksRequest  searchTracksRequest = spotifyApi.searchTracks(search).limit(count).market(country).build();

			Paging<Track> trackPaging = searchTracksRequest.execute();

			for (Track track : trackPaging.getItems()) {
				songDTO dto2=new songDTO();
				dto2.setSname(track.getName());
				dto2.setPhoto(track.getAlbum().getImages()[0].getUrl());
				dto2.setArtist(track.getArtists()[0].getName());
				dto.add(dto2);
			}
			return dto;
		} catch (ParseException |IOException | SpotifyWebApiException e) {
			e.printStackTrace();
		}
		return null;
	}
	public static List<songDTO> getTodaySong() {
		try {
			List<songDTO> dto=new ArrayList<songDTO>();


			SearchTracksRequest  searchTracksRequest = spotifyApi.searchTracks("year:2023").limit(10).build();

			Paging<Track> trackPaging = searchTracksRequest.execute();

			for (Track track : trackPaging.getItems()) {
				songDTO dto2=new songDTO();
				dto2.setSname(track.getName());
				dto2.setPhoto(track.getAlbum().getImages()[0].getUrl());
				dto2.setArtist(track.getArtists()[0].getName());
				dto.add(dto2);
			}
			return dto;
		} catch (ParseException |IOException | SpotifyWebApiException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public static String getTrackUrl(String search) {
	    try {
	        // Get top track matching the search query
	        SearchTracksRequest searchTracksRequest = spotifyApi.searchTracks(search).limit(1).build();
	        Paging<Track> trackPaging = searchTracksRequest.execute();
	        
	        if (trackPaging.getTotal() > 0) {
	            Track track = trackPaging.getItems()[0];
	            return track.getExternalUrls().get("spotify");
	        }
	    } catch (ParseException | IOException | SpotifyWebApiException e) {
	        e.printStackTrace();
	    }
	    
	    return null;
	}


}
>>>>>>> 47c7cc18242a2fb1f900ed47d3c85dac627dd3be




