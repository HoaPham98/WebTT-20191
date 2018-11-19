package com.nhom17.model.services.internal.database_interaction;

import com.nhom17.database.DatabaseConnector;
import com.nhom17.model.services.internal.database_interaction.interfaces.DatabaseInteractionService;
import com.nhom17.model.services.internal.database_interaction.utility.MovieInfoServiceUtility;
import com.nhom17.model.services.internal.database_interaction.utility.MovieScheduleServiceUtility;

public class DatabaseInteractionServiceFactory {

	public static final int SERVICE_MOVIE_INFO = 1;
	public static final int SERVICE_MOVIE_SCHEDULE = 2;

	public DatabaseInteractionServiceFactory() {
		System.out.println("##" + this.getClass().getName() + "##");
	}

	public DatabaseInteractionService getService(int service) {
		DatabaseInteractionService databaseInteractionService = null;
		DatabaseConnector dbConnector = DatabaseConnector.getInstance();
		switch (service) {
		case DatabaseInteractionServiceFactory.SERVICE_MOVIE_INFO:
			databaseInteractionService = new MovieInfoServiceUtility(dbConnector);
			break;
		case DatabaseInteractionServiceFactory.SERVICE_MOVIE_SCHEDULE:
			databaseInteractionService = new MovieScheduleServiceUtility(dbConnector);
			break;
		default:
			break;
		}
		return databaseInteractionService;
	}

}
