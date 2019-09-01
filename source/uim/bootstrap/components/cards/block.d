module uim.bootstrap.components.cards.block;

import uim.bootstrap;

class DBS4CardBlock : DBS4Obj {
	mixin(H5This!("DIV", `["card-block"]`));
	override public void init() { super.init; }
	unittest {
		assert(BS4CardBlock == `<div class="card-block"></div>`);
	}
}
mixin(BS4Short!"CardBlock");
