<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<!--  *** add imports for youtunes and the use bean for artist dao -->


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YouTunes | Artist List</title>


<link
	rel="stylesheet" href="site.css">
	
	<!-- *** example for linking to a bootstrap css if I choose to 
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous"
	-->
</head>
<body>
	<jsp:include page="../TopNav.jsp" flush="true" />

	<div class="py-5 container width-35">
	
		<h2 class="text-center">Artist List</h2>
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
		
			<!-- **** Add list of artists via artist dao and itterate through to display -->
					
		
		</table>
	</div>

	<jsp:include page="../Footer.jsp" flush="true" />
	<jsp:include page="../ScriptFooter.jsp" flush="true" />
</body>
</html>