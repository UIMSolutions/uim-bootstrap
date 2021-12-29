module uim.bootstrap.bs5.basic.components.cards.card;

@safe: 
import uim.bootstrap;

class DBS5Card : DBS5Obj {
	mixin(H5This!("DIV", ["card"]));

	O block(this O)()	{
		return this.classes("card-block");
	}
	unittest {
		assert(Assert(BS5Card.block, `<div class="card card-block"></div>`));
	}

	O inverse(this O)() {
		return this.classes("card-inverse");
	}
	unittest {
		assert(Assert(BS5Card.inverse, `<div class="card card-inverse"></div>`));
	}

	/// Add Image
	mixin(MyContent!("image", "BS5CardImage"));
	unittest {
		assert(Assert(BS5Card.image, `<div class="card"><img class="card-img-top"></div>`));
	}
	/// Add card body
	mixin(MyContent!("body_", "BS5CardBody"));
	unittest {
		assert(Assert(BS5Card.body_, `<div class="card"><div class="card-body"></div></div>`));
	}

	/// Add card footer
	mixin(MyContent!("footer", "BS5CardFooter"));
	unittest {
		assert(Assert(BS5Card.footer, `<div class="card"><div class="card-footer"></div></div>`));
	}

	/// Add card header
	mixin(MyContent!("header", "BS5CardHeader"));
	unittest {
		assert(Assert(BS5Card.header, `<div class="card"><div class="card-header"></div></div>`));
	}

	mixin(MyContent!("list", "BS5List"));
	unittest {
		// assert(Assert(BS5Card.header, `<div class="card"><div class="card-header"></div></div>`));
	}

	/// Add card image overlay
	mixin(MyContent!("overlay", "BS5CardOverlay"));
	unittest {
		assert(Assert(BS5Card.overlay, `<div class="card"><div class="card-img-overlay"></div></div>`));
	}
}

mixin(H5Calls!"BS5Card");
unittest {
	assert(Assert(BS5Card, `<div class="card"></div>`));
	assert(Assert(BS5Card.block.inverse, `<div class="card card-block card-inverse"></div>`));
}
