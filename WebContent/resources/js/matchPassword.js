function onLoad() {
	$("#form-password").keyup(checkPasswordsMatch);
	$("#form-confirmPassword").keyup(checkPasswordsMatch);
	$("#form-createuser").submit(canSubmit);
}

function canSubmit() {
	var password = $("#form-password").val();
	var confirmpass = $("#form-confirmPassword").val();

	if (password != confirmpass) {
		alert("Passwords do not match.")
		return false;
	} else {
		return true;
	}
}

function checkPasswordsMatch() {
	var password = $("#form-password").val();
	var confirmpass = $("#form-confirmPassword").val();

	if (password.length > 3 || confirmpass.length > 3) {

		if (password == confirmpass) {
			$("#matchpass").text("Passwords match.");
			$("#matchpass").addClass("valid");
			$("#matchpass").css('color', 'green');
			$("#matchpass").removeClass("error");
		} else {
			$("#matchpass").text("Passwords do not match.");
			$("#matchpass").addClass("error");
			$("#matchpass").css('color', 'red');
			$("#matchpass").removeClass("valid");
		}
	}
}

$(document).ready(onLoad);