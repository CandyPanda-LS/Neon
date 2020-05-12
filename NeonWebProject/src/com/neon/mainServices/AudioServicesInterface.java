package com.neon.mainServices;

import java.util.ArrayList;

import com.neon.model.Audio;

public interface AudioServicesInterface {

	public ArrayList<Audio> getAudioList(String userID);

	public ArrayList<Audio> getAudioDetails(String audID);

}
