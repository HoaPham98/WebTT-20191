package com.nhom17.model.dto;

import java.util.Date;
import java.util.List;
import java.util.Map;

public class MovieShowTimeSchedule {

	private Map<DangPhim, List<XuatChieu>> showTimes;
	private Phim movie;
	private Date showDate;

	public Map<DangPhim, List<XuatChieu>> getShowTimes() {
		return showTimes;
	}

	public void setShowTimes(Map<DangPhim, List<XuatChieu>> showTimes) {
		this.showTimes = showTimes;
	}

	public Phim getMovie() {
		return movie;
	}

	public void setMovie(Phim movie) {
		this.movie = movie;
	}

	public Date getShowDate() {
		return showDate;
	}

	public void setShowDate(Date showDate) {
		this.showDate = showDate;
	}
}
