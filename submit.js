function SubmitFormData() {
	var name = $("#first_name").val();
	var email = $("#surname").val();
	var phone = $("#other_names").val();
	var gender = $("national_id").val();
	$.post("submit.php", { first_name: first_name, surname: surname, other_names: other_names, national_id: national_id },
	   function(data) {
		 $('#results').html(data);
		 $('#myForm')[0].reset();
	   });
}

