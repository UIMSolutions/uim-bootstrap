module uim.bootstrap.components.cards.image;

import uim.bootstrap;

class DBS4CardImage : DBS4Obj { // default top
	mixin(H5This!("IMG", `["card-img-top"]`, null, true));
	override public void _init() {
		super._init;
		_tag = "img";
	}

	O position(this O)(string value) { _classes.del("card-img-top"); _classes.add("card-img-"~value); return cast(O)this; }
}
mixin(BS4Short!"CardImage");

unittest {
	
	
	assert(BS4CardImage == `<img class="card-img-top">`);
	assert(BS4CardImage.position("top") == `<img class="card-img-top">`);
	assert(BS4CardImage.position("bottom") == `<img class="card-img-bottom">`);
}
