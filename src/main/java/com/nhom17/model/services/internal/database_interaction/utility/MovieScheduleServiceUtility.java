package com.nhom17.model.services.internal.database_interaction.utility;

import java.util.*;

import com.nhom17.model.dto.*;
import com.nhom17.model.reposity.impl.XuatChieuDao;
import com.nhom17.model.services.internal.database_interaction.interfaces.MovieScheduleService;

public class MovieScheduleServiceUtility extends DatabaseServiceUtility implements MovieScheduleService {

	public MovieScheduleServiceUtility() {
		reposity = XuatChieuDao.createXuatChieuReposity();
	}

	private XuatChieuDao reposity;

	@Override
	public boolean openService() {
		return false;
	}

	@Override
	public boolean closeService() {
		return false;
	}

	@Override
	public MovieShowTimeSchedule getMovieSchedule(Phim phim, Date date){
		Map<DangPhim,List<XuatChieu>> showTimes = new HashMap<>();
		MovieShowTimeSchedule movieShowTimeSchedule = new MovieShowTimeSchedule();
		List<XuatChieu> showtimes = reposity.getByMovie(phim, date);
		for (DangPhim dangPhim: DangPhim.allDangPhim) {
			showTimes.put(dangPhim, new ArrayList<XuatChieu>());
		}
		for (XuatChieu showtime : showtimes) {
			showTimes.get(DangPhim.getDangPhim(showtime.getMaDangPhim())).add(showtime);
		}
		movieShowTimeSchedule.setShowTimes(showTimes);
		return movieShowTimeSchedule;
	}

	@Override
	public boolean isMoviePlaying(XuatChieu xuatChieu) {
		Date date = new Date();

		return false;
	}
}
