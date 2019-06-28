$(document).ready(function() {

	// process the form
	$('form').submit(function(event) {

		$('.form-group').removeClass('has-error'); // remove the error class
		$('.help-block').remove(); // remove the error text

		// get the form data
		// there are many ways to get this data using jQuery (you can use the class or id also)
		var formData = {
			'employer' 				: $('input[name=employer]').val(),
			'position' 				: $('input[name=position]').val(),
			'start_date' 				: $('input[name=start_date]').val(),
			'end_date' 				: $('input[name=end_date]').val(),
			'current_job' 				: $('input[name=current_job]').val(),
			'salary' 				: $('input[name=salary]').val(),
			'notice_period' 				: $('input[name=notice_period]').val(),
			'roles_performed' 				: $('input[name=roles_performed]').val()
		
		};

		// process the form
		$.ajax({
			type 		: 'POST', // define the type of HTTP verb we want to use (POST for our form)
			url 		: 'submit_work_experience.php', // the url where we want to POST
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
					
					// handle errors for name ---------------
					if (data.errors.employer) {
						$('#employer-group').addClass('has-error'); // add the error class to show red input
						$('#employer-group').append('<div class="help-block">' + data.errors.employer + '</div>'); // add the actual error message under our input
					}
						if (data.errors.position) {
						$('#position-group').addClass('has-error'); // add the error class to show red input
						$('#position-group').append('<div class="help-block">' + data.errors.position + '</div>'); // add the actual error message under our input
					}
							if (data.errors.start_date) {
						$('#start_date-group').addClass('has-error'); // add the error class to show red input
						$('#start_date-group').append('<div class="help-block">' + data.errors.start_date + '</div>'); // add the actual error message under our input
					}
							if (data.errors.end_date) {
						$('#end_date-group').addClass('has-error'); // add the error class to show red input
						$('#end_date-group').append('<div class="help-block">' + data.errors.end_date + '</div>'); // add the actual error message under our input
					}
							if (data.errors.current_job) {
						$('#current_job-group').addClass('has-error'); // add the error class to show red input
						$('#current_jobcurrent_job-group').append('<div class="help-block">' + data.errors.current_job + '</div>'); // add the actual error message under our input
					}
							if (data.errors.salary) {
						$('#salary-group').addClass('has-error'); // add the error class to show red input
						$('#salarysalary-group').append('<div class="help-block">' + data.errors.salary + '</div>'); // add the actual error message under our input
					}
							if (data.errors.notice_period) {
						$('#notice_period-group').addClass('has-error'); // add the error class to show red input
						$('#notice_period-group').append('<div class="help-block">' + data.errors.notice_period + '</div>'); // add the actual error message under our input
					}
							if (data.errors.roles_performed) {
						$('#roles_performed-group').addClass('has-error'); // add the error class to show red input
						$('#roles_performed-group').append('<div class="help-block">' + data.errors.roles_performed + '</div>'); // add the actual error message under our input
					}


		

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
