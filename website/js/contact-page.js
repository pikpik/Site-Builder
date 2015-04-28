function email () {
	
	apply ( ".email-address", emailAddress );
	
}

function emailAddress ( link ) {
	
	var characters = link.getAttribute ( "data-characters" ).split ( "," );
	
	var positions = link.getAttribute ( "data-positions" ).split ( "," );
	
	var address = [];
	
	for ( var p = 0; p < positions.length; p++ ) {
		
		var position = positions [ p ];
		
		address [ position ] = characters [ p ];
		
	}
	
	address = address.join ( "" );
	
	link.innerHTML = address;
	
	link.href = "mailto:" + address;
	
}

window.addEventListener ( "load", email, false );