package com.nhom17.model.services.internal.database_interaction.utility;

import java.util.ArrayList;

import com.nhom17.database.DatabaseConnector;
import com.nhom17.model.dto.Phim;
import com.nhom17.model.reposity.impl.PhimReposity;
import com.nhom17.model.services.internal.database_interaction.interfaces.MovieInfoService;

public class MovieInfoServiceUtility extends DatabaseServiceUtility implements MovieInfoService {

	public MovieInfoServiceUtility(DatabaseConnector dbConnector) {
		super(dbConnector);
		reposity = new PhimReposity();
	}

	private PhimReposity reposity;

	@Override
	public boolean openService() {
//		getDbConnector().createConnection();
		return false;
	}

	@Override
	public boolean closeService() {
//		getDbConnector().closeConnection();
		return false;
	}


	@Override
	public ArrayList<Phim> getMovieList(boolean nowShowingFlag) {
		if (nowShowingFlag) {
			return reposity.getNowShowingMovies();
		}
		return reposity.getUpComingMovies();
	}

	@Override
	public Phim getMovieInfo(String MaPhim) {
		return reposity.getMovie(MaPhim);
	}
}
