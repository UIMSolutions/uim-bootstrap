module uim.bootstrap.bs4.components.cards.image;

import uim.bootstrap;

@safe: class DBS4CardImage : DBS4Obj { // default top
	mixin(H5This!("IMG", ["card-img-top"], null, true));
	override public void _init() {
		super._init;
		_tag = "img";
	}

	O position(this O)(string value) { _classes = _classes.sub("card-img-top").add("card-img-"~value); return cast(O)this; }
	unittest {
		assert(Assert(BS4CardImage.position("top"),`<img class="card-img-top">`));
		assert(Assert(BS4CardImage.position("bottom"),`<img class="card-img-bottom">`));
	}
}
mixin(H5Calls!"BS4CardImage");

unittest {
	assert(Assert(BS4CardImage,`<img class="card-img-top">`));
	assert(Assert(BS4CardImage.position("top"),`<img class="card-img-top">`));
	assert(Assert(BS4CardImage.position("bottom"),`<img class="card-img-bottom">`));
}
