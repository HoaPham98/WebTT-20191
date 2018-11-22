package com.nhom17.model.services.internal.database_interaction.interfaces;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;

import com.nhom17.model.dto.MovieShowTimeSchedule;
import com.nhom17.model.dto.Phim;
import com.nhom17.model.dto.XuatChieu;

public interface MovieScheduleService extends DatabaseInteractionService {

	public MovieShowTimeSchedule getMovieSchedule(Phim phim, Date date);

	public boolean isMoviePlaying(XuatChieu xuatChieu);

}
