<%@page import="book.BookDTO"%>
<%@page import="book.BookDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	String publisher = request.getParameter("publisher");
	String price = request.getParameter("price");
	String pubdate  = request.getParameter("pubdate");
	
	BookDAO dao = new BookDAO();
	BookDTO dto = new BookDTO();
	
	dto.setTitle(title);
	dto.setWriter(writer);
	dto.setPublisher(publisher);
	dto.setPrice(price);
	dto.setPubdate(pubdate);
	
	int result = dao.insertWrite(dto);
	dao.close();
	if(result == 1) {
		%>
			<<script>
				alert("게시글이 등록되었습니다.");
				location.replace("writer.jsp");
			</script>
		<%		
			} else {
		%>
			<<script>
				alert("게시글 등록을 실패했습니다.");
				location.replace("writer.jsp");
			</script>
			
		<%}%>
	
%>