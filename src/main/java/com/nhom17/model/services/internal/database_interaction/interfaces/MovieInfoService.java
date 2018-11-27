package com.nhom17.model.services.internal.database_interaction.interfaces;

import java.util.ArrayList;
import java.util.List;

import com.nhom17.model.dto.Phim;

public interface MovieInfoService extends DatabaseInteractionService {

	public List<Phim> getMovieList(boolean nowShowingFlag);
	
	public Phim getMovieInfo(String MaPhim);

}
