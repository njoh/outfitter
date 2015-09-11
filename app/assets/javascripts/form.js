$(function() {
	// PUT (create) AJAX request
	$('#putForm').submit(function(){
		var query = '/tops/';
    query += "topName=" + $('#tname').val();
		console.log(query);
		$.ajax({
			url: query,
			type: 'PUT',
			success: function(result) {
				$('#status').html(result);
			}
		});
		return false;
	});

	// GET (retrieve) AJAX request
	$('#getForm').submit(function(){
		var query = '/tops/';
		query += "topName=" + $('#tname').val();
		$.ajax({
			url: query,
			type: 'GET',
			success: function(result) {
				$('#current').html(result);
			}
		});
		return false;
	});

	// GET (retrieve) all AJAX request
	$('#seeAll').submit(function(){
		var query = '/tops/';
		query += "topName=" + $('#tname').val();
		$.ajax({
			url: query,
			type: 'GET',
			success: function(result) {
				$('#current').html(result);
			}
		});
		return false;
	});

	// DELETE AJAX request
	$('#deleteEvent').submit(function(){
		var query = '/tops/';
		query += "topName=" + $('#tname').val();
		console.log("deleted" + query);
		$.ajax({
			url: query,
			type: 'DELETE',
			success: function(result) {
				$('#current').html(result);
			}
		});
		return false;
	});
});
