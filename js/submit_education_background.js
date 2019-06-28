// magic.js
$(document).ready(function() {

	// process the form
	$('form').submit(function(event) {

		$('.form-group').removeClass('has-error'); // remove the error class
		$('.help-block').remove(); // remove the error text

		// get the form data
		// there are many ways to get this data using jQuery (you can use the class or id also)
		var formData = {
			'institution' 				: $('input[name=institution]').val(),
			'program' 				: $('input[name=program]').val(),
			'education_level'           : $('input[name=education_level]').val(),
			'start_date'           : $('input[name=start_date]').val(),
			'graduation_date'           : $('input[name=graduation_date]').val(),
			'anticipated_graduation_date'           : $('input[name=anticipated_graduation_date]').val(),
			'certificate'           : $('input[name=certificate]').val(),
			'issuing_organization'           : $('input[name=issuing_organization]').val(),
			'issuing_date'           : $('input[name=issuing_date]').val(),
			'expiring_date'           : $('input[name=expiring_date]').val(),
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
					if (data.errors.institution) {
						$('#institution-group').addClass('has-error'); // add the error class to show red input
						$('#institution-group').append('<div class="help-block">' + data.errors.institution + '</div>'); // add the actual error message under our input
					}

						// handle errors for surnamename ---------------
					if (data.errors.program) {
						$('#program-group').addClass('has-error'); // add the error class to show red input
						$('#program-group').append('<div class="help-block">' + data.errors.program + '</div>'); // add the actual error message under our input
					}

											// handle errors for surnamename ---------------
					if (data.errors.education_level) {
						$('#education_level-group').addClass('has-error'); // add the error class to show red input
						$('#education_level-group').append('<div class="help-block">' + data.errors.education_level + '</div>'); // add the actual error message under our input
					}

	                if (data.errors.start_date) {
						$('#start_date-group').addClass('has-error'); // add the error class to show red input
						$('#start_date-group').append('<div class="help-block">' + data.errors.start_date + '</div>'); // add the actual error message under our input
					}

					   if (data.errors.graduation_date) {
						$('#graduation_date-group').addClass('has-error'); // add the error class to show red input
						$('#graduation_date-group').append('<div class="help-block">' + data.errors.graduation_date + '</div>'); // add the actual error message under our input

					if (data.errors.anticipated_graduation_date) {
						$('#anticipated_graduation_date-group').addClass('has-error'); // add the error class to show red input
						$('#anticipated_graduation_date-group').append('<div class="help-block">' + data.errors.anticipated_graduation_date + '</div>'); // add the actual error message under our input
					}

					 if (data.errors.country) {
						$('#country-group').addClass('has-error'); // add the error class to show red input
						$('#country-group').append('<div class="help-block">' + data.errors.country + '</div>'); // add the actual error message under our input

						if (data.errors.certificate) {
						$('#certificate-group').addClass('has-error'); // add the error class to show red input
						$('#certificate-group').append('<div class="help-block">' + data.errors.certificate + '</div>'); // add the actual error message under our input

					 if (data.errors.issuing_organization) {
						$('#issuing_organization-group').addClass('has-error'); // add the error class to show red input
						$('#issuing_organization-group').append('<div class="help-block">' + data.errors.issuing_organization + '</div>'); // add the actual error message under our input
		
					 if (data.errors.issuing_date) {
						$('#issuing_date-group').addClass('has-error'); // add the error class to show red input
						$('#issuing_date-group').append('<div class="help-block">' + data.errors.issuing_date + '</div>'); // add the actual error message under our input

				   if (data.errors.expiring_date) {
						$('#expiring_date-group').addClass('has-error'); // add the error class to show red input
						$('#expiring_date-group').append('<div class="help-block">' + data.errors.expiring_date + '</div>'); // add the actual error message under our input

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
