// magic.js
$(document).ready(function() {

	// process the form
	$('form').submit(function(event) {

		$('.form-group').removeClass('has-error'); // remove the error class
		$('.help-block').remove(); // remove the error text

		// get the form data
		// there are many ways to get this data using jQuery (you can use the class or id also)
		var formData = {
			'first_name' 				: $('input[name=first_name]').val(),
			'surname' 				: $('input[name=surname]').val(),
			'other_names'           : $('input[name=other_names]').val(),
			'id_no'           : $('input[name=id_no]').val(),
			'gender'           : $('input[name=gender]').val(),
			'dob'           : $('input[name=dob]').val(),
			'country'           : $('input[name=country]').val(),
			'state'           : $('input[name=state]').val(),
			'city'           : $('input[name=city]').val(),
			'phone'           : $('input[name=phone]').val(),
			'email'           : $('input[name=email]').val()

		
		};

		// process the form
		$.ajax({
			type 		: 'POST', // define the type of HTTP verb we want to use (POST for our form)
			url 		: 'submit_personal_info.php', // the url where we want to POST
			data 		: formData, // our data object
			dataType 	: 'json', // what type of data do we expect back from the server
			encode 		: true
		})
			// using the done promise callback
			.done(function(data) {

				// log data to the console so we can see
				console.log(data); 

				// here we will handle errors and validation messages
				if ( ! data.success) {
					
					// handle errors for first name ---------------
					if (data.errors.first_name) {
						$('#first_name-group').addClass('has-error'); // add the error class to show red input
						$('#first_name-group').append('<div class="help-block">' + data.errors.first_name + '</div>'); // add the actual error message under our input
					}

						// handle errors for surnamename ---------------
					if (data.errors.surname) {
						$('#surname-group').addClass('has-error'); // add the error class to show red input
						$('#surname-group').append('<div class="help-block">' + data.errors.surname + '</div>'); // add the actual error message under our input
					}

											// handle errors for surnamename ---------------
					if (data.errors.other_names) {
						$('#other_names-group').addClass('has-error'); // add the error class to show red input
						$('#other_names-group').append('<div class="help-block">' + data.errors.other_names + '</div>'); // add the actual error message under our input
					}

	                if (data.errors.id_no) {
						$('#id_no-group').addClass('has-error'); // add the error class to show red input
						$('#id_no-group').append('<div class="help-block">' + data.errors.id_no + '</div>'); // add the actual error message under our input
					}

					   if (data.errors.gender) {
						$('#gender-group').addClass('has-error'); // add the error class to show red input
						$('#gender-group').append('<div class="help-block">' + data.errors.gender + '</div>'); // add the actual error message under our input

					if (data.errors.dob) {
						$('#dob-group').addClass('has-error'); // add the error class to show red input
						$('#dob-group').append('<div class="help-block">' + data.errors.dob + '</div>'); // add the actual error message under our input
					}

					 if (data.errors.country) {
						$('#country-group').addClass('has-error'); // add the error class to show red input
						$('#country-group').append('<div class="help-block">' + data.errors.country + '</div>'); // add the actual error message under our input

						if (data.errors.state) {
						$('#state-group').addClass('has-error'); // add the error class to show red input
						$('#state-group').append('<div class="help-block">' + data.errors.state + '</div>'); // add the actual error message under our input

					 if (data.errors.city) {
						$('#city-group').addClass('has-error'); // add the error class to show red input
						$('#city-group').append('<div class="help-block">' + data.errors.city + '</div>'); // add the actual error message under our input
		
					 if (data.errors.phone) {
						$('#phone-group').addClass('has-error'); // add the error class to show red input
						$('#phone-group').append('<div class="help-block">' + data.errors.phone + '</div>'); // add the actual error message under our input

				   if (data.errors.email) {
						$('#email-group').addClass('has-error'); // add the error class to show red input
						$('#email-group').append('<div class="help-block">' + data.errors.email + '</div>'); // add the actual error message under our input

				} else {

					// ALL GOOD! just show the success message!
					$('form').append('<div class="alert alert-success">' + data.message + '</div>');

					// usually after form submission, you'll want to redirect
					// window.location = '/thank-you'; // redirect a user to another page

				}
			})

			// using the fail promise callback
			.fail(function(data) {

				// show any errors
				// best to remove for production
				console.log(data);
			});

		// stop the form from submitting the normal way and refreshing the page
		event.preventDefault();
	});

});
