package com.nhom17.model.services.internal.database_interaction.utility;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;

import com.nhom17.database.DatabaseConnector;
import com.nhom17.model.dto.Phim;
import com.nhom17.model.dto.XuatChieu;
import com.nhom17.model.reposity.impl.XuatChieuReposity;
import com.nhom17.model.services.internal.database_interaction.interfaces.MovieScheduleService;

public class MovieScheduleServiceUtility extends DatabaseServiceUtility implements MovieScheduleService {

	public MovieScheduleServiceUtility(DatabaseConnector dbConnector) {
		super(dbConnector);
		reposity = new XuatChieuReposity();
	}

	private XuatChieuReposity reposity;

	@Override
	public boolean openService() {
		getDbConnector().createConnection();
		return false;
	}

	@Override
	public boolean closeService() {
		getDbConnector().closeConnection();
		return false;
	}

	@Override
	public ArrayList<XuatChieu> getMovieSchedule(Phim phim, Date date) throws ParseException {
		ArrayList<XuatChieu> result = new ArrayList<>();
		ArrayList<XuatChieu> all = reposity.getByMovie(phim);
		for (XuatChieu xuatChieu : all) {
			if (xuatChieu.getNgayChieu().equals(date)) {
				result.add(xuatChieu);
			}
		}

		return result;
	}

	@Override
	public boolean isMoviePlaying(XuatChieu xuatChieu) {
		Date date = new Date();

		return false;
	}
}
