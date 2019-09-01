module uim.bootstrap.components.cards.footer;

import uim.bootstrap;

class DBS4CardFooter : DBS4Obj {
	mixin(H5This!("DIV", `["card-footer"]`));
	override public void init() {
		super.init;
	}
	unittest {
		assert(BS4CardFooter == `<div class="card-footer"></div>`);
	}
}
mixin(BS4Short!"CardFooter");
