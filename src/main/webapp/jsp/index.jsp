<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="youtunes.Album"%>


<jsp:useBean id="albumDao" scope="application" class="youtunes.JdbcAlbumDao" />

<!-- 
Keegan Jones
CSD - 460 Capstone
10/19/2021
 -->

<!--  
	Image references 
	Pearl Jam: https://en.wikipedia.org/wiki/Ten_(Pearl_Jam_album)
	No Doubt: https://en.wikipedia.org/wiki/Tragic_Kingdom
	ZZ Top: https:https://en.wikipedia.org/wiki/Eliminator_(album)
	Garth Brooks: https://en.wikipedia.org/wiki/No_Fences
	Amy Grant: https://en.wikipedia.org/wiki/Home_for_Christmas_(Amy_Grant_album)
-->


<!DOCTYPE html>

<html>
	<head>
	<meta charset="UTF-8">
	<title>Welcome to YouTunes!</title>
	</head>
	
	<link
		rel="stylesheet" href="site.css">
		
		<!-- *** example for linking to a bootstrap css if I choose to do later. ***
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
		integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
		crossorigin="anonymous"
		-->
		
	
	<body>
		<h1 class="welcome">Welcome to</h1>
			<div class='logo'>
				<img src="images/youTunesLogo.jpeg" alt="YouTunes Logo" width="200" height="148">
			</div>
		<!-- Tie in the TopNav file and where I want it. -->
		<jsp:include page="TopNav.jsp" flush="true" />
	
		<main>
				<p class="lead-text">Below you will find a selection of music. 
					To add new music to your list, click on the 
					"Add New Album" button. 
				</p>
				
				<!-- create Add New Album button -->
				<p> 
					<a href="store?action=newAlbum" class="btn btn-primary my-2">Add New Album</a>
				</p>
		
		<div class="album py-5 bg-light">
			<div class="container">
			
				<%
					List<Album> albums = albumDao.list();
					Iterator<Album> iterator = albums.iterator();
					while (iterator.hasNext())
					{
						Album album = (Album)iterator.next();
				%>
				
				<div class="home-albums">
					<div class="home-albums">
						
						<div class="home-albums">
						    <img src="<%=album.getImgUrl()%>" alt="Album Cover Art" height="100" class="card-img-top" />
						
							<p class="album-text">
							    
								<span><%=album.getTitle()%></span>
								<br />
								<small class="text-muted"><em><%=album.getGenre()%></em></small>
							</p>
							
							<div class="album-details">
								<div class="btn-group">
									<a href="store?action=albumDetails&albumId=<%=album.getAlbumId()%>" class="btn btn-sm btn-outline-secondary">Edit</a>
									<a href="store?action=deleteAlbum&albumId=<%=album.getAlbumId()%>" class="btn btn-sm btn-outline-secondary">Delete</a>
								</div>
								<small class="text-muted">$<%=album.getPrice()%></small>
							</div>
						</div>
					</div>
				</div>
				<% } %>
		</div>
	</div>

		
		</main>
		
		<!-- Page footer -->
		<jsp:include page="Footer.jsp" flush="true" />
		
	
	
	</body>
</html>