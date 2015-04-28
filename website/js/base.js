function apply ( selector, action ) {
	
	Array.prototype.map.call ( document.querySelectorAll ( selector ), action );
	
}