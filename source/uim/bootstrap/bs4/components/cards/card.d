module uim.bootstrap.bs4.components.cards.card;

@safe: 
import uim.bootstrap;

class DBS4Card : DBS4Obj {
	mixin(H5This!("DIV", ["card"]));

	O block(this O)()	{
		return this.classes("card-block");
	}
	version(test_uim_bootstrap) { unittest {
		assert(BS4Card.block, `<div class="card card-block"></div>`);
	}}

	O inverse(this O)() {
		return this.classes("card-inverse");
	}
	version(test_uim_bootstrap) { unittest {
		assert(BS4Card.inverse, `<div class="card card-inverse"></div>`);
	}}

	/// Add Image
	mixin(MyContent!("image", "BS4CardImage"));
	version(test_uim_bootstrap) { unittest {
		assert(BS4Card.image, `<div class="card"><img class="card-img-top"></div>`);
	}}

	/// Add card body
	mixin(MyContent!("body_", "BS4CardBody"));
	version(test_uim_bootstrap) { unittest {
		assert(BS4Card.body_, `<div class="card"><div class="card-body"></div></div>`);
	}}

	/// Add card footer
	mixin(MyContent!("footer", "BS4CardFooter"));
	version(test_uim_bootstrap) { unittest {
		assert(BS4Card.footer, `<div class="card"><div class="card-footer"></div></div>`);
	}}

	/// Add card header
	mixin(MyContent!("header", "BS4CardHeader"));
	version(test_uim_bootstrap) { unittest {
		assert(BS4Card.header, `<div class="card"><div class="card-header"></div></div>`);
	}}

	/// Add card image overlay
	mixin(MyContent!("overlay", "BS4CardOverlay"));
	version(test_uim_bootstrap) { unittest {
		assert(BS4Card.overlay, `<div class="card"><div class="card-img-overlay"></div></div>`);
	}}
}

mixin(H5Calls!"BS4Card");
version(test_uim_bootstrap) { unittest {
	assert(BS4Card, `<div class="card"></div>`);
	assert(BS4Card.block.inverse, `<div class="card card-block card-inverse"></div>`);
}}
