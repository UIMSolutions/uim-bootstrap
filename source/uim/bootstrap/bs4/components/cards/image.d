module uim.bootstrap.bs4.components.cards.image;

@safe: 
import uim.bootstrap;

class DBS4CardImage : DBS4Obj { // default top
	mixin(H5This!("IMG", ["card-img-top"], null, true));
	override public void initialize() {
		super.initialize;
		_tag = "img";
	}

	O position(this O)(string value) { _classes = _classes.sub("card-img-top").add("card-img-"~value); return cast(O)this; }
	unittest {
		assert(BS4CardImage.position("top"),`<img class="card-img-top">`));
		assert(BS4CardImage.position("bottom"),`<img class="card-img-bottom">`));
	}
}
mixin(H5Calls!"BS4CardImage");

unittest {
	assert(BS4CardImage,`<img class="card-img-top">`));
	assert(BS4CardImage.position("top"),`<img class="card-img-top">`));
	assert(BS4CardImage.position("bottom"),`<img class="card-img-bottom">`));
}
