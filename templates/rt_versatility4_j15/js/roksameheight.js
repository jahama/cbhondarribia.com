/*
    Get the maximum height from divs with passed class as argument
    Djamil Legato <djamil@djamil.it>
    For Andy Miller
*/

var maxHeight = function(classname) {
    var divs = document.getElements(classname);
    var max = 0;
    divs.each(function(div) {
        max = Math.max(max, div.getSize().size.y);
    });
	divs.setStyle('height', max);
    return max;
};

window.addEvent('load', function() { 
	if (!window.ie6) {
		maxHeight('#mainmodules .block div div div');
		maxHeight('#mainmodules2 .block div div div');
	};
	maxHeight('div.main-height');
});