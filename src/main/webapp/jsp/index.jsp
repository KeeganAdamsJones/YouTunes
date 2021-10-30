<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>




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
		
		<!-- *** example for linking to a bootstrap css if I choose to 
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
					"Add Now" button. To learn more about the selection click the "Details"
					button.  You can also click the "View By" button for a drop down menu
					to view by SongTitle, Artist, Album or Genre.</p>
				<p>
					<!-- *** Add link and button to  
					<a href="store?action=newAlbum" class="btn btn-primary my-2">My Music</a>
					-->
				</p>
			

		
		</main>
		
		<!-- Page footer -->
		<jsp:include page="Footer.jsp" flush="true" />
		
		<!-- JavaScript-->  
		<jsp:include page="ScriptFooter.jsp" flush="true" />
	
	</body>
</html>