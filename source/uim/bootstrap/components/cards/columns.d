module uim.bootstrap.components.cards.columns;

import uim.bootstrap;

class DBS4CardColumns : DBS4Obj {
	mixin(H5This!("DIV", `["card-columns"]`));
	override public void _init() {
		super._init;
	}
	unittest {
		assert(BS4CardColumns == `<div class="card-columns"></div>`);
	}
}
mixin(BS4Short!"CardColumns");
