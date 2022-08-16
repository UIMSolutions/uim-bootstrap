module uim.bootstrap.bs5.basic.components.cards.image;

@safe: 
import uim.bootstrap;

class DBS5CardImage : DBS5Obj { // default top
	mixin(H5This!("IMG", ["card-img-top"], null, true));

	O position(this O)(string value) { _classes = _classes.sub("card-img-top").add("card-img-"~value); return cast(O)this; }
	version(test_uim_bootstrap) { unittest {
		assert(BS5CardImage.position("top") == `<img class="card-img-top">`);
		assert(BS5CardImage.position("bottom") == `<img class="card-img-bottom">`);
	}}
}
mixin(H5Calls!"BS5CardImage");

version(test_uim_bootstrap) { unittest {
	assert(BS5CardImage == `<img class="card-img-top">`);
	assert(BS5CardImage.position("top") == `<img class="card-img-top">`);
	assert(BS5CardImage.position("bottom") == `<img class="card-img-bottom">`);
}}
