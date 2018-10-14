package dto;
import java.util.Date;

public class Phim {
    private String maPhim;
    private String imdbURL;
    private int thoiLuongPhim;
    private String nhanPhim;
    private String posterURL;
    private String motaPhim;
    private String tenPhim;
    private float imdbRank;
    private Date ngayBatDau;
    private int id;
    private Date ngayKetThuc;
    private String ghiChu;
    private String quocGia;

    public Phim() {

    }

    public String getMaPhim() {
        return maPhim;
    }

    public void setMaPhim(String maPhim) {
        this.maPhim = maPhim;
    }

    public String getImdbURL() {
        return imdbURL;
    }

    public void setImdbURL(String imdbURL) {
        this.imdbURL = imdbURL;
    }

    public int getThoiLuongPhim() {
        return thoiLuongPhim;
    }

    public void setThoiLuongPhim(int thoiLuongPhim) {
        this.thoiLuongPhim = thoiLuongPhim;
    }

    public String getNhanPhim() {
        return nhanPhim;
    }

    public void setNhanPhim(String nhanPhim) {
        this.nhanPhim = nhanPhim;
    }

    public String getPosterURL() {
        return posterURL;
    }

    public void setPosterURL(String c){
        this.posterURL = c;
    }

    public String getMotaPhim() {
        return motaPhim;
    }

    public void setMotaPhim(String motaPhim) {
        this.motaPhim = motaPhim;
    }

    public String getTenPhim() {
        return tenPhim;
    }

    public void setTenPhim(String tenPhim) {
        this.tenPhim = tenPhim;
    }

    public float getImdbRank() {
        return imdbRank;
    }

    public void setImdbRank(float imdbRank) {
        this.imdbRank = imdbRank;
    }

    public Date getNgayBatDau() {
        return ngayBatDau;
    }

    public void setNgayBatDau(Date ngayBatDau) {
        this.ngayBatDau = ngayBatDau;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getNgayKetThuc() {
        return ngayKetThuc;
    }

    public void setNgayKetThuc(Date ngayKetThuc) {
        this.ngayKetThuc = ngayKetThuc;
    }

    public String getGhiChu() {
        return ghiChu;
    }

    public void setGhiChu(String ghiChu) {
        this.ghiChu = ghiChu;
    }

    public String getQuocGia() {
        return quocGia;
    }

    public void setQuocGia(String quocGia) {
        this.quocGia = quocGia;
    }
}
