package com.nhom17.model.services.internal.database_interaction;

import com.nhom17.model.services.internal.database_interaction.interfaces.DatabaseInteractionService;
import com.nhom17.model.services.internal.database_interaction.utility.BookingTicketServiceUtility;
import com.nhom17.model.services.internal.database_interaction.utility.MovieInfoServiceUtility;
import com.nhom17.model.services.internal.database_interaction.utility.MovieScheduleServiceUtility;

public class DatabaseInteractionServiceFactory {

	public static final int SERVICE_MOVIE_INFO = 1;
	public static final int SERVICE_MOVIE_SCHEDULE = 2;
	public static final int SERVICE_BOOKING_TICKET = 3;

	public DatabaseInteractionServiceFactory() {
		System.out.println("##" + this.getClass().getName() + "##");
	}

	public DatabaseInteractionService getService(int service) {
		DatabaseInteractionService databaseInteractionService = null;
		switch (service) {
		case DatabaseInteractionServiceFactory.SERVICE_MOVIE_INFO:
			databaseInteractionService = new MovieInfoServiceUtility();
			break;
		case DatabaseInteractionServiceFactory.SERVICE_MOVIE_SCHEDULE:
			databaseInteractionService = new MovieScheduleServiceUtility();
			break;
		case DatabaseInteractionServiceFactory.SERVICE_BOOKING_TICKET:
			databaseInteractionService = new BookingTicketServiceUtility();
		default:
			break;
		}
		return databaseInteractionService;
	}

}
