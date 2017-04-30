$(function() {
	$("#sort-button").on("click", function() {
		var sort = $("#sort-value").val();
		var city = $("#sort-value").data("city");
		window.location.replace(`/cities/${city}?order=${sort}`)
	})
})