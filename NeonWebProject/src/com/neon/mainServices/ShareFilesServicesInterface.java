package com.neon.mainServices;

import java.util.ArrayList;

import com.neon.model.ShareFiles;

public interface ShareFilesServicesInterface {

	public ArrayList<ShareFiles> getSharedFileList(String ReceivedUserID);

}
