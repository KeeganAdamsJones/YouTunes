<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!-- 
Keegan Jones
 -->

<html>
<head>
<meta charset="UTF-8">
<title>YouTunes | New Artist</title>

<link
		rel="stylesheet" href="../site.css">
		
		<!-- *** example for linking to a bootstrap css if I choose to 
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
		integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
		crossorigin="anonymous"
		-->
</head>


<body>
	<div class='logo'>
		<img src="../images/youTunesLogo.jpeg" alt="YouTunes Logo" width="200" height="148">
	</div>

<jsp:include page="../TopNav.jsp" flush="true" />

<div class="container py-5 width-35">
	<h2>New Artist Form</h2>
	<form>
		<input type="hidden" name="action" value="createArtist" />
					
		<div class="mb-3">
			<label for="firstName" class="form-label">First name</label>
			<input type="text" class="form-control" id="firstName" name="firstName" />
		</div>
					
		<div class="mb-3">
			<label for="lastName" class="form-label">Last name</label>
			<input type="text" class="form-control" id="lastName" name="lastName" />
		</div>
					
		<button type="submit" class="btn btn-primary float-end">Save</button>
	</form>
	
	<br /><br />
	<a href="store?action=showArtists">Return to artists</a>
</div>



</body>
</html>