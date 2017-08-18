$(function() {
	var dialog, form,

	// From http://www.whatwg.org/specs/web-apps/current-work/multipage/states-of-the-type-attribute.html#e-mail-state-%28type=email%29
	emailRegex = /^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/, nome = $("#nome"), email = $("#email"), senha = $("#senha"), allFields = $(
			[]).add(nome).add(email).add(senha), tips = $(".validateTips");

	function updateTips(t) {
		tips.text(t).addClass("ui-state-highlight");
		setTimeout(function() {
			tips.removeClass("ui-state-highlight", 1500);
		}, 500);
	}

	function checkLength(o, n, min, max) {
		if (o.val().length > max || o.val().length < min) {
			o.addClass("ui-state-error");
			updateTips("Length of " + n + " must be between " + min + " and " + max + ".");
			return false;
		} else {
			return true;
		}
	}

	function checkRegexp(o, regexp, n) {
		if (!(regexp.test(o.val()))) {
			o.addClass("ui-state-error");
			updateTips(n);
			return false;
		} else {
			return true;
		}
	}

	function post(path, params, method) {
	    method = method || "post"; // Set method to post by default if not specified.

	    // The rest of this code assumes you are not using a library.
	    // It can be made less wordy if you use one.
	    var formulario = document.createElement("form");
	    formulario.setAttribute("method", method);
	    formulario.setAttribute("action", path);

	    for(var key in params) {
	        if(params.hasOwnProperty(key)) {
	            var hiddenField = document.createElement("input");
	            hiddenField.setAttribute("type", "text");
	            hiddenField.setAttribute("name", key);
	            hiddenField.setAttribute("value", params[key]);

	            formulario.appendChild(hiddenField);
	         }
	    }

	    document.body.appendChild(formulario);
	    formulario.submit();
	}
	//post('/contact/', {name: 'Johnny Bravo'});	
	
	function addUser() {
		var valid = true;
		allFields.removeClass("ui-state-error");

		valid = valid && checkLength(nome, "username", 3, 16);
		valid = valid && checkLength(email, "email", 6, 80);
		valid = valid && checkLength(senha, "senha", 5, 16);

		valid = valid
				&& checkRegexp(
						nome,
						/^[a-z]([0-9a-z_\s])+$/i,
						"Username may consist of a-z, 0-9, underscores, spaces and must begin with a letter.");
		valid = valid && checkRegexp(email, emailRegex, "eg. ui@jquery.com");
		valid = valid
				&& checkRegexp(senha, /^([0-9a-zA-Z])+$/,
						"Password field only allow : a-z 0-9");

		if (valid) {
			$("#users tbody").append(
					"<tr>" + "<td>" + nome.val() + "</td>" + "<td>"
							+ email.val() + "</td>" + "<td>" + senha.val()
							+ "</td>" + "</tr>");
			post('/minhaloja/salvaUsuario', {nome: nome.val(), email: email.val(), senha: senha.val()});
			dialog.dialog("close");
		}
		return valid;
	}

	dialog = $("#dialog-form").dialog({
		autoOpen : false,
		height : 400,
		width : 350,
		modal : true,
		buttons : {
			"Create an account" : addUser,
			Cancel : function() {
				dialog.dialog("close");
			}
		},
		close : function() {
			form[0].reset();
			allFields.removeClass("ui-state-error");
		}
	});

	form = dialog.find("form").on("submit", function(event) {
		event.preventDefault();
		addUser();
	});

	$("#create-user").button().on("click", function() {
		dialog.dialog("open");
	});
	
});