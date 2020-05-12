package com.neon.mainServices;

import java.sql.SQLException;
import java.util.ArrayList;

import com.neon.model.Audio;
import com.neon.util.AudioDAO;

public class AudioServices implements AudioServicesInterface{
	
	
	@SuppressWarnings("static-access")
	@Override
	public ArrayList<Audio> getAudioList(String userID) {

		AudioDAO aud = new AudioDAO();
		ArrayList<Audio> audioDetails = null;
		try {
			audioDetails = (ArrayList<Audio>) aud.getAudioList(userID);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return audioDetails;

	}
	
	
	@Override
	public ArrayList<Audio> getAudioDetails(String audID) {

		AudioDAO aud = new AudioDAO();
		ArrayList<Audio> audioDetails = null;
		try {
			audioDetails = (ArrayList<Audio>) aud.getAudioDetails(audID);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return audioDetails;

	}
	

}
