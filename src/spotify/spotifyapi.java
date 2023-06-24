package spotify;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.hc.core5.http.ParseException;

import com.neovisionaries.i18n.CountryCode;

import se.michaelthelin.spotify.SpotifyApi;
import se.michaelthelin.spotify.exceptions.SpotifyWebApiException;
import se.michaelthelin.spotify.model_objects.specification.ArtistSimplified;
import se.michaelthelin.spotify.model_objects.specification.Paging;
import se.michaelthelin.spotify.model_objects.specification.Track;
import se.michaelthelin.spotify.requests.data.search.simplified.SearchTracksRequest;
import song.songDTO;


public class spotifyapi {
	static createAccesstoken token=new createAccesstoken();
	private final static String accessToken=token.accesstoken();

    
    static SpotifyApi spotifyApi = new SpotifyApi.Builder().setAccessToken(accessToken).build();
    
    
    public static List<songDTO> getTrack_Sync() {
    	int i=1;
    	 try {
    		 List<songDTO> dto=new ArrayList<songDTO>();
             // Get top tracks
    		 SearchTracksRequest  searchTracksRequest = spotifyApi.searchTracks("year:2023").limit(50).market(CountryCode.KR).build();

             Paging<Track> trackPaging = searchTracksRequest.execute();

             for (Track track : trackPaging.getItems()) {
            	 songDTO dto2=new songDTO();
            	 dto2.setSname(track.getName());
            	 dto2.setSnum(i++);
            	 dto2.setDuration(track.getDurationMs()/1000/60);
            	 dto2.setsPhoto(track.getAlbum().getImages());
            	 dto2.setArtist(track.getArtists()[0].getName());
            	 dto.add(dto2);
             }
             return dto;
         } catch (ParseException |IOException | SpotifyWebApiException e) {
             e.printStackTrace();
         }
    	 return null;
     }
    }

     
     
    
 
