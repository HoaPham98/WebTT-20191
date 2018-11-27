package com.nhom17.model.services.internal.database_interaction.utility;

import java.util.ArrayList;
import java.util.List;

import com.nhom17.model.dto.Phim;
import com.nhom17.model.reposity.impl.PhimDao;
import com.nhom17.model.services.internal.database_interaction.interfaces.MovieInfoService;

public class MovieInfoServiceUtility extends DatabaseServiceUtility implements MovieInfoService {

	public MovieInfoServiceUtility() {
		reposity = PhimDao.createPhimReposity();
	}

	private PhimDao reposity;

	@Override
	public boolean openService() {
		return false;
	}

	@Override
	public boolean closeService() {
		return false;
	}


	@Override
	public List<Phim> getMovieList(boolean nowShowingFlag) {
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
