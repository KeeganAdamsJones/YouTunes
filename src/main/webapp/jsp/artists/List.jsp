<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>

<%@page import="youtunes.Artist"%>

<jsp:useBean id="artistDao" scope="application"
	class="youtunes.JdbcArtistDao" />
	
<!DOCTYPE html>

<!-- 
Keegan Jones
 -->

<html>
<head>
	<meta charset="UTF-8">
	<title>YouTunes | Artist List</title>
	<link
		rel="stylesheet" href="../site.css">
</head>

<body>
	<div class='logo'>
		<img src="../images/youTunesLogo.jpeg" alt="YouTunes Logo" width="200" height="148">
	</div>
	
	<jsp:include page="../TopNav.jsp" flush="true" />

	<div class="py-5 container width-35">
	
		<h2 class="welcome">Artist List</h2>
		<br />
		
		<p class="text-center">
			<a href="store?action=newArtist" class="btn btn-outline-secondary text-center w-50">New Artist</a>
		</p>
		
		
		<table class="table">
			<thead>
				<tr>
					<th>ArtistId</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Functions</th>
				</tr>
			</thead>
			
			
			
			<%
			  // Using DAO to access DB to itterate through and get complete list of artists and output
				List<Artist> artists = artistDao.list(); 
				Iterator<Artist> iterator = artists.iterator();
				while (iterator.hasNext())
				{
					Artist artist = (Artist)iterator.next();
					System.out.println(artist.getArtistId());
					System.out.println(artist.getFirstName());
					System.out.println(artist.getLastName());
					
					// HTML content from artist list
					%>
						<tr>
							<td><%=artist.getArtistId()%></td>
							<td><%=artist.getFirstName()%></td>
							<td><%=artist.getLastName()%></td>
							<td>
								<a href="store?action=artistDetails&artistId=<%=artist.getArtistId()%>" class="link">Edit</a> |
								<a href="store?action=deleteArtist&artistId=<%=artist.getArtistId() %>" class="link">Delete</a>
							</td>
						</tr>
				<% } %>
					
		</table>
	</div>

	<jsp:include page="../Footer.jsp" flush="true" />

</body>
</html>