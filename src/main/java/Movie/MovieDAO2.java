package Movie;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MovieDAO2 {
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
	
	public Movie getMoviTitle(String title) throws SQLException {
		Connection conn = open();
		Movie m = new Movie();

		// sql 문
		String sql = "SELECT id, movietitle, PARSEDATETIME(opendate,'yyyy-MM-dd') as opendate, genre, age, photo from movie where movietitle =?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, title);
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
}
