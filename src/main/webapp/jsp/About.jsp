<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>YouTunes | About Us</title>

<link
		rel="stylesheet" href="site.css">
		
		<!-- *** example for linking to a bootstrap css if I choose to 
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
		integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
		crossorigin="anonymous"
		-->

</head>
<body>
<jsp:include page="TopNav.jsp" flush="true" />

<div class="container py-5 width-35">
	
	<div class="row">
		<div class="col-12">
			<h3 class="text-center">ZZ Top</h3>
		</div>
	</div>
	
	<br />
	<div class="row">
		<div class="col-4">
			
			<img src="/youtunes/images/zzTopEliminator.jpeg"  />
		</div>
		
		<div class="col-8">
			<p>
        		ZZ Top, American rock group famous for its rugged blues-driven 
        		guitar work, irreverent music videos, and embrace of its Texas 
        		roots, as well as for the musicians’ distinctive facial hair. 
        		The members are singer-guitarist Billy Gibbons (b. December 16, 
        		1949, Houston, Texas, U.S.), bass player Dusty Hill (original 
        		name Joe Michael Hill, b. May 19, 1949, Dallas, Texas—d. July 27, 
        		2021, Houston), and drummer Frank Beard (b. June 11, 1949, 
        		Frankston, Texas).
       			<em class="https://www.britannica.com/topic/ZZ-Top">Source</a></em>
      		</p>
		</div>
	</div>

</div>


<jsp:include page="ScriptFooter.jsp" flush="true" />

</body>
</html>