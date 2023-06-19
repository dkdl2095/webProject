package Movie;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MovieDAO {
	final String JDBC_DRIVER = "org.h2.Driver";
	final String JDBC_URL = "jdbc:h2:tcp://localhost/~/movie";

	// DB 연결을 가져오는 메소드
	public Connection open() {
		Connection conn = null;
		try {
			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(JDBC_URL, "5wh", "1234");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}

	public List<Movie> getAll() throws Exception {
		Connection conn = open();
		List<Movie> moviesList = new ArrayList<>();

		// sql 문
		String sql = "SELECT id, movietitle, PARSEDATETIME(opendate,'yyyy-MM-dd') as opendate, genre, age, photo from movie";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();

		try (conn; pstmt; rs) {
			while (rs.next()) {
				Movie m = new Movie();
				m.setId(rs.getInt("id"));
				m.setMovietitle(rs.getString("movietitle"));
				m.setOpendate(rs.getDate("opendate"));
				m.setGenre(rs.getString("genre"));
				m.setAge(rs.getInt("age"));
				m.setPhoto(rs.getString("photo"));
				moviesList.add(m);
			}
			return moviesList;
		}
	}

	public Movie getMovie(int id) throws SQLException {
		Connection conn = open();
		Movie m = new Movie();

		// sql 문
		String sql = "SELECT id, movietitle, PARSEDATETIME(opendate,'yyyy-MM-dd') as opendate, genre, age, photo from movie where id =?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, id);
		ResultSet rs = pstmt.executeQuery();

		rs.next();
		try (conn; pstmt; rs) {
			m.setId(rs.getInt("id"));
			m.setMovietitle(rs.getString("movietitle"));
			m.setOpendate(rs.getDate("opendate"));
			m.setGenre(rs.getString("genre"));
			m.setAge(rs.getInt("age"));
			m.setPhoto(rs.getString("photo"));
			pstmt.executeQuery();
			return m;
		}
	}
	
	public List<Movie> getMovietitle(String movietitle) throws SQLException {
		Connection conn = open();
		List<Movie> moviesList = new ArrayList<>();

		// sql 문
		String sql = "SELECT id, movietitle, PARSEDATETIME(opendate,'yyyy-MM-dd') as opendate, genre, age, photo from movie where movietitle like ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		movietitle = "%" + movietitle + "%";
		pstmt.setString(1, movietitle);
		ResultSet rs = pstmt.executeQuery();

		rs.next();
		try (conn; pstmt; rs) {
			Movie m = new Movie();
			m.setId(rs.getInt("id"));
			m.setMovietitle(rs.getString("movietitle"));
			m.setOpendate(rs.getDate("opendate"));
			m.setGenre(rs.getString("genre"));
			m.setAge(rs.getInt("age"));
			m.setPhoto(rs.getString("photo"));
			moviesList.add(m);
			return moviesList;
		}
	}

	public void addMovie(Movie m) throws Exception {
		Connection conn = open();
		String sql = "insert into movie(MOVIETITLE ,OPENDATE, GENRE , AGE , PHOTO ) values(?, ?, ?, ?, ?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);

		try (conn; pstmt) {
			pstmt.setString(1, m.getMovietitle());
			pstmt.setString(2, m.getGenre());
			pstmt.setDate(3, m.getOpendate());
			pstmt.setInt(4, m.getAge());
			pstmt.setString(5, m.getPhoto());
			pstmt.executeUpdate();
		}
	}

	public void delMovie(int id) throws Exception {
		Connection conn = open();
		String sql = "delete from movie where id=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);

		try (conn; pstmt) {
			pstmt.setInt(1, id);
			if (pstmt.executeUpdate() == 0) {
				throw new SQLException("DB에러");
			}
		}
	}
	
	public List<Reservation> getReservationAll() throws SQLException {
		Connection conn = open();
		List<Reservation> List = new ArrayList<>();
		
		// sql 문
		String sql = "SELECT * from RESERVATION";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();

		try (conn; pstmt; rs) {
			while (rs.next()) {
				Reservation r = new Reservation();
				r.setId(rs.getInt("id"));
				r.setMovietitle(rs.getString("movietitle"));
				r.setDate(rs.getDate("date"));
				r.setRdate(rs.getString("rdate"));
				r.setTime(rs.getString("time"));
				r.setSeat(rs.getString("seat"));
				List.add(r);
			}
			return List;
		}
	}
	
	public void addReservation(String title, String time, String rdate, String seat) throws Exception {
		Connection conn = open();
		String sql = "insert into RESERVATION(movietitle, date, rdate, time, seat) values(?, current_timestamp(), ?, ?, ?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);

		try (conn; pstmt) {
			pstmt.setString(1, title);
			pstmt.setString(2, rdate);
			pstmt.setString(3, time);
			pstmt.setString(4, seat);
			pstmt.executeUpdate();
		}
	}
	
	public void delReservation(int id) throws Exception {
		Connection conn = open();
		String sql = "delete from RESERVATION where id= ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);

		try (conn; pstmt) {
			pstmt.setInt(1, id);
			if (pstmt.executeUpdate() == 0) {
				throw new SQLException("DB에러");
			}
		}
	}

	public void updateMovie(int id) throws Exception {
		Connection conn = open();
		String sql = "update movie set movietitle=?, genre=?, age=?, photo=? where Id= ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);

		try (conn; pstmt) {
			pstmt.setInt(1, id);
			if (pstmt.executeUpdate() == 0) {
				throw new SQLException("DB에러");
			}
		}
	}
}
