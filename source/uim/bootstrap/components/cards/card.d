module uim.bootstrap.components.cards.card;

import uim.bootstrap;

class DBS4Card : DBS4Obj {
	mixin(H5This!("DIV", `["card"]`));
	override public void init() {
		super.init;
	}

	O block(this O)() { return this.classes("card-block"); }
	O inverse(this O)() { return this.classes("card-inverse"); }

	mixin(MyContent!("image", "BS4CardImage"));
	mixin(MyContent!("bdy", "BS4CardBody"));
}
mixin(BS4Short!"Card");

unittest {
	

	assert(BS4Card == `<div class="card"></div>`);
	assert(BS4Card.block == `<div class="card card-block"></div>`);
	assert(BS4Card.inverse == `<div class="card card-inverse"></div>`);
	assert(BS4Card.block.inverse == `<div class="card card-block card-inverse"></div>`);
}
