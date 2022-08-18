module uim.bootstrap.bs5.basic.components.cards.card;

@safe: 
import uim.bootstrap;

class DBS5Card : DBS5Obj {
	mixin(H5This!("DIV", ["card"]));

	O block(this O)()	{
		return this.addClasses("card-block");
	}
	version(test_uim_bootstrap) { unittest {
		assert(BS5Card.block, == `<div class="card card-block"></div>`);
	}}

	O inverse(this O)() {
		return this.addClasses("card-inverse");
	}
	version(test_uim_bootstrap) { unittest {
		assert(BS5Card.inverse, == `<div class="card card-inverse"></div>`);
	}}

	/// Add Image
	mixin(MyContent!("image", "BS5CardImage"));
	version(test_uim_bootstrap) { unittest {
		assert(BS5Card.image, == `<div class="card"><img class="card-img-top"></div>`);
	}}

	/// Add card body
	mixin(MyContent!("body_", "BS5CardBody"));
	version(test_uim_bootstrap) { unittest {
		assert(BS5Card.body_, == `<div class="card"><div class="card-body"></div></div>`);
	}}

	/// Add card footer
	mixin(MyContent!("footer", "BS5CardFooter"));
	version(test_uim_bootstrap) { unittest {
		assert(BS5Card.footer, == `<div class="card"><div class="card-footer"></div></div>`);
	}}

	/// Add card header
	mixin(MyContent!("header", "BS5CardHeader"));
	version(test_uim_bootstrap) { unittest {
		assert(BS5Card.header, == `<div class="card"><div class="card-header"></div></div>`);
	}}

	mixin(MyContent!("list", "BS5List"));
	version(test_uim_bootstrap) { unittest {
		// assert(BS5Card.header, == `<div class="card"><div class="card-header"></div></div>`);
	}}

	/// Add card image overlay
	mixin(MyContent!("overlay", "BS5CardOverlay"));
	version(test_uim_bootstrap) { unittest {
		assert(BS5Card.overlay, == `<div class="card"><div class="card-img-overlay"></div></div>`);
	}}
}

mixin(H5Calls!"BS5Card");
version(test_uim_bootstrap) { unittest {
	assert(BS5Card == `<div class="card"></div>`);
	assert(BS5Card.block.inverse == `<div class="card card-block card-inverse"></div>`);
}}
