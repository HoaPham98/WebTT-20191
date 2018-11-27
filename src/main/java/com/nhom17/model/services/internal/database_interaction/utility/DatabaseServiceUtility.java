package com.nhom17.model.services.internal.database_interaction.utility;

import java.sql.SQLException;

public abstract class DatabaseServiceUtility {

	protected DatabaseServiceUtility() {
	}

	protected void printSQLERRM(SQLException e) {
		if (e.getErrorCode() == 00001)
			System.out.println("ORA-00001: unique constraint (MOVIE.SYS_C007563) violated");
		else if (e.getErrorCode() == 20007)
			System.out.println("ORA-20007: There is more or less than enough data for inserting into CUSTOMERS table.");
		else
			System.out.println(e.getMessage());

	}

}
