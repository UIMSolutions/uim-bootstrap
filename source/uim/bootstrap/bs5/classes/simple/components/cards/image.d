module uim.bootstrap.bs5.classes.simple.components.cards.image;

import uim.bootstrap;

class DBS5CardImage : DBS5Obj { // default top
	mixin(H5This!("IMG", ["card-img-top"], null, true));
	override public void _init() {
		super._init;
		_tag = "img";
	}

	O position(this O)(string value) { _classes = _classes.sub("card-img-top").add("card-img-"~value); return cast(O)this; }
	unittest {
		assert(Assert(BS5CardImage.position("top"),`<img class="card-img-top">`));
		assert(Assert(BS5CardImage.position("bottom"),`<img class="card-img-bottom">`));
	}
}
mixin(H5Calls!"BS5CardImage");

unittest {
	assert(Assert(BS5CardImage,`<img class="card-img-top">`));
	assert(Assert(BS5CardImage.position("top"),`<img class="card-img-top">`));
	assert(Assert(BS5CardImage.position("bottom"),`<img class="card-img-bottom">`));
}
