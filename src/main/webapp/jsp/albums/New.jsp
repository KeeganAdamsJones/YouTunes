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
<title>YouTunes | New Album</title>

<link
		rel="stylesheet" href="site.css">
		
		<!-- *** example for linking to a bootstrap css if I choose to 
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
		integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
		crossorigin="anonymous"
		-->
</head>


<body>
	<div class='logo'>
		<img src="images/youTunesLogo.jpeg" alt="YouTunes Logo" width="200" height="148">
	</div>
	
<jsp:include page="../TopNav.jsp" flush="true" />

<div class="container py-5 width-35">
	<h2>New Album Form</h2>
	<form id="albumForm">
		<input type="hidden" name="action" value="createAlbum" />
					
		<div class="mb-3">
			<label for="title" class="form-label">Album title</label>
			<input type="text" class="form-control" id="title" name="title" />
		</div>
					
		<div class="mb-3">
			<label for="price" class="form-label">Price</label>
			<input type="text" class="form-control" id="price" name="price" />
		</div>
		
		<div class="mb-3">
			<label for="img" class="form-label">Image URL</label>
			<input type="text" class="form-control" id="img_url" name="img_url" />
		</div>
		
		<div class="mb-3">
			<label for="genre" class="form-label">Genre</label>
			<select class="form-select" id="genre" name="genre">
				<option value="0" selected>--Select Genre--</option>
				<option value="Rock">Rock</option>
				<option value="Pop">Pop</option>
				<option value="Blues">Blues</option>
				<option value="Country">Country</option>
				<option value="Christian">Christian</option>
			</select>
		</div>
		
		<div class="alert alert-danger" id="alert-genre-message" role="alert">
  			
		</div>
		
		<div class="mb-3">
			<label for="artist" class="form-label">Artist</label>
			<select class="form-select" id="artist" name="artist">
				<option value="0" selected>--Select Artist--</option>
				
				<%
					List<Artist> artists = artistDao.list();
					Iterator<Artist> iterator = artists.iterator();
					while (iterator.hasNext())
					{
						Artist artist = (Artist)iterator.next();
					
				%>
						<option value="<%=artist.getArtistId()%>"><%=artist.getLastName()%>, <%=artist.getFirstName()%></option>
					<% } %>
			</select>
		</div>
		
		<div class="alert alert-danger" id="alert-artist-message" role="alert">
  			
		</div>
					
		<button id="btnSubmit" type="submit" class="btn btn-primary float-end">Save</button>
	</form>
	
	<br /><br />
	<a href="store">Return home</a>
</div>



<script type="text/javascript" src="albumvalidator.js"></script>

</body>
</html>