<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
	
	<body>
		<!-- Tie in the TopNav file and where I want it. -->
		<jsp:include page="TopNav.jsp" flush="true" />
	
		<main>
			<h1 class="fw-light">Welcome to</h1>
			<div class='logo'>
				<img src="images/youTunesLogo.jpeg">
			</div>
			<!-- *** Put in YouTunes Logo, About Us, Contact Us, Dropdown Menu-->
				<p class="lead text-muted">Below you will find a selection of music. 
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
	
	</body>
</html>