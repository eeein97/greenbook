package book;

import java.sql.SQLException;

import greenbook.JDBCConnecttion;

public class BookDAO extends JDBCConnecttion{
	//writer.jsp
	public int insertWrite(BookDTO dto) {
		int result = 0;
		String query = "insert into book (title, writer, publisher, price, pubdate) "
				+"values (?,?,?,?,?)";
		
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, dto.getTitle());
			psmt.setString(2, dto.getWriter());
			psmt.setString(3, dto.getPublisher());
			psmt.setString(4, dto.getPrice());
			psmt.setString(5, dto.getPubdate());
			result = psmt.executeUpdate();
			System.out.println(dto.getTitle() + dto.getWriter() + dto.getPublisher() + dto.getPrice() + dto.getPubdate());
			System.out.println("등록을 성공했습니다.");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;

	}
	
}
