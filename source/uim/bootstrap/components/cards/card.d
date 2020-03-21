module uim.bootstrap.components.cards.card;

import uim.bootstrap;

class DBS4Card : DBS4Obj {
	mixin(H5This!("DIV", `["card"]`));

	O block(this O)()	{
		return this.classes("card-block");
	}
	unittest {
		assert(Assert(BS4Card.block, `<div class="card card-block"></div>`));
	}

	O inverse(this O)() {
		return this.classes("card-inverse");
	}
	unittest {
		assert(Assert(BS4Card.inverse, `<div class="card card-inverse"></div>`));
	}

	/// Add Image
	mixin(MyContent!("image", "BS4CardImage"));
	unittest {
		assert(Assert(BS4Card.inverse, `<div class="card card-inverse"></div>`));
	}
	/// Add card body
	mixin(MyContent!("body_", "BS4CardBody"));
	unittest {
		assert(Assert(BS4Card.body_, `<div class="card"><div class="card-body"></div></div>`));
	}

	/// Add card footer
	mixin(MyContent!("footer", "BS4CardFooter"));
	unittest {
		assert(Assert(BS4Card.footer, `<div class="card"><div class="card-footer"></div></div>`));
	}

	/// Add card header
	mixin(MyContent!("header", "BS4CardHeader"));
	unittest {
		assert(Assert(BS4Card.header, `<div class="card"><div class="card-header"></div></div>`));
	}

	/// Add card image overlay
	mixin(MyContent!("overlay", "BS4CardOverlay"));
	unittest {
		assert(Assert(BS4Card.overlay, `<div class="card"><div class="card-img-overlay"></div></div>`));
	}
}

mixin(BS4Short!"Card");
unittest {
	assert(Assert(BS4Card, `<div class="card"></div>`));
	assert(Assert(BS4Card.block.inverse, `<div class="card card-block card-inverse"></div>`));
}
