
	// this makes sure that the add album form is populated correctly to submit
	let albumForm = document.getElementById("albumForm");
	
	albumForm.onsubmit = function() {
		let genre = document.getElementById('genre').value;
		let artist = document.getElementById('artist').value;
		let alertGenreDiv = document.getElementById('alert-genre-message'); 
		let alertArtistDiv = document.getElementById('alert-artist-message');
		
		console.log('Genre: ' + genre);
		console.log('Artist: ' + artist);
		
		if (genre.localeCompare('0') === 0) {	
			showAlertBox(alertGenreDiv, 'Sorry, invalid genre selection.');
			
			return false;
		} else if (artist.localeCompare('0') === 0) {
			hideAlertBox(alertGenreDiv, ''); 
			showAlertBox(alertArtistDiv, 'Sorry, invalid artist selection.');
			
			return false;
		}
		else {
			hideAlertBox(alertGenreDiv, '');
			hideAlertBox(alertArtistDiv, '');
			albumForm.submit(); 
		} 
	}
	
	function hideAlertBox(div, msg) {
		div.style.display = 'none';
		div.innerHTML = msg;
	}
	
	function showAlertBox(div, msg) {
		div.style.display = 'block';
		div.innerHTML = msg;
	}
